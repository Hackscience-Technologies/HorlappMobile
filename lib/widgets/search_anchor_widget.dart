import 'package:flutter/material.dart';

import '../constants/dimensions.dart';

class SearchFieldAnchor extends StatefulWidget {
  final double height;
  final String hintText;

  const SearchFieldAnchor(
      {super.key, required this.height, required this.hintText});

  @override
  State<SearchFieldAnchor> createState() => _SearchFieldAnchorState();
}

class _SearchFieldAnchorState extends State<SearchFieldAnchor> {
  @override
  Widget build(BuildContext context) {

    final TextTheme textTheme = Theme.of(context).textTheme;
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: kVerticalPadding,
        horizontal: kHorizontalPadding,
      ),
      child: SizedBox(
        height: widget.height,
        child: SearchAnchor(
          builder: (BuildContext context, SearchController controller) {
            return SearchBar(
              backgroundColor: const MaterialStatePropertyAll<Color>(
                Colors.transparent,
              ),
              elevation: const MaterialStatePropertyAll<double>(0),
              hintText: widget.hintText,
              hintStyle: MaterialStatePropertyAll<TextStyle>(
                textTheme.titleMedium!.copyWith(
                  color: colorScheme.onSurfaceVariant.withAlpha(100)
                )
              ),
              shape: MaterialStatePropertyAll<OutlinedBorder>(
                StadiumBorder(
                  side:
                      BorderSide(color: Theme.of(context).colorScheme.outline),
                ),
              ),
              controller: controller,
              padding: const MaterialStatePropertyAll<EdgeInsets>(
                EdgeInsets.symmetric(
                  horizontal: kHorizontalPadding,
                ),
              ),
              onTap: () {
                controller.openView();
              },
              onChanged: (_) {
                controller.openView();
              },
              leading: const Icon(Icons.search),
            );
          },
          suggestionsBuilder:
              (BuildContext context, SearchController controller) {
            return List<ListTile>.generate(5, (int index) {
              final String item = 'item $index';
              return ListTile(
                  title: Text(item),
                  onTap: () {
                    setState(() {
                      controller.closeView(item);
                    });
                  });
            });
          },
        ),
      ),
    );
  }
}
