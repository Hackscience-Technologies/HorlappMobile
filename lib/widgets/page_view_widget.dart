import 'package:flutter/material.dart';
import '../constants/dimensions.dart';

class PageViewWidget extends StatelessWidget {
  final double defaultWidth;
  final double defaultHeight;

  final String title;
  final String linkTitle;

  final void Function()? onTap;
  final Widget? Function(BuildContext context, int index) itemBuilder;
  final List items;

  const PageViewWidget(
      {super.key,
      required this.defaultWidth,
      required this.defaultHeight,
      required this.title,
      required this.linkTitle,
      required this.onTap,
      required this.items,
      required this.itemBuilder});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kHorizontalPadding,
          ),
          child: SizedBox(
            width: defaultWidth,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(title),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    linkTitle,
                    style: const TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: kSizedBoxHeight,
        ),
        SizedBox(
          width: defaultWidth,
          height: defaultHeight * 0.2,
          child: PageView.builder(
            itemCount: items.length,
            itemBuilder: itemBuilder,
          ),
        ),
      ],
    );
  }
}
