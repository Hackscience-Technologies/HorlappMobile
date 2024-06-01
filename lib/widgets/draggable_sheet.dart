import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../constants/dimensions.dart';

class DraggableSheet extends StatefulWidget {
  const DraggableSheet({super.key});

  @override
  State<DraggableSheet> createState() => _DraggableSheetState();
}

class _DraggableSheetState extends State<DraggableSheet> {
  double _sheetPosition = 0.17;
  final double _minChildSize = 0.03;
  final double _maxChildSize = 0.17;
  final double _dragSensitivity = 600;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final TextTheme textTheme = Theme.of(context).textTheme;
    final double defaultHeight = MediaQuery.of(context).size.height;
    final double defaultWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: kVerticalPadding * 2,
      ),
      child: SizedBox(
        width: defaultWidth * 0.8,
        child: DraggableScrollableSheet(
          initialChildSize: _sheetPosition,
          maxChildSize: _maxChildSize,
          minChildSize: _minChildSize,
          expand: false,
          builder: (BuildContext context, ScrollController scrollController) {
            return Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(kContainerRadius),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Grabber(
                    onVerticalDragUpdate: (DragUpdateDetails details) {
                      setState(() {
                        _sheetPosition -= details.delta.dy / _dragSensitivity;
                        if (_sheetPosition < _minChildSize) {
                          _sheetPosition = _minChildSize;
                        }
                        if (_sheetPosition > _maxChildSize) {
                          _sheetPosition = _maxChildSize;
                        }
                      });
                    },
                  ),
                  Flexible(
                    child: ListView.builder(
                      controller: scrollController,
                      itemCount: 1,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.brown.shade800,
                            child: Text(
                              'AH',
                              style: textTheme.titleLarge
                                  ?.copyWith(color: colorScheme.onSecondary),
                            ),
                          ),
                          title: Text(
                            'Alex Harding',
                            style: textTheme.titleMedium
                                ?.copyWith(color: colorScheme.onSecondary),
                          ),
                          subtitle: Text(
                            'Lorem Ipsum',
                            style: textTheme.titleSmall?.copyWith(
                              color: colorScheme.onSecondary.withAlpha(100),
                            ),
                          ),
                          trailing: SizedBox(
                            width: defaultWidth * 0.2,
                            child: Row(
                              children: [
                                Expanded(
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.call,
                                      color: colorScheme.onSecondary,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.chat,
                                      color: colorScheme.onSecondary,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class Grabber extends StatelessWidget {
  const Grabber({
    super.key,
    required this.onVerticalDragUpdate,
  });

  final ValueChanged<DragUpdateDetails> onVerticalDragUpdate;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return GestureDetector(
      onVerticalDragUpdate: onVerticalDragUpdate,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(kContainerRadius),
            topRight: Radius.circular(kContainerRadius),
          ),
        ),
        width: double.infinity,
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            width: 32.0,
            height: 4.0,
            decoration: BoxDecoration(
              color: colorScheme.onSecondary,
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
      ),
    );
  }
}
