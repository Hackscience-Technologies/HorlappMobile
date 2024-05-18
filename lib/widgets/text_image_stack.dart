import 'package:flutter/material.dart';

import '../constants/dimensions.dart';

class TextImageStack extends StatelessWidget {
  const TextImageStack({super.key});

  @override
  Widget build(BuildContext context) {
    final double defaultWidth = MediaQuery.of(context).size.width;
    final double defaultHeight = MediaQuery.of(context).size.height;
    final TextStyle? kTitleStyle = Theme.of(context).textTheme.titleSmall;
    const double imageWidth = 100;
    const double imageHeight = 100;
    const int imageCacheWidth = 100;
    const int imageCacheHeight = 100;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      width: defaultWidth,
      child: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: [
          Positioned(
            right: 0,
            child: SizedBox(
              width: defaultWidth * 0.3,
              height: defaultHeight * 0.12,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(kContainerRadius),
                child: Image.asset(
                  "assets/images/big_mac.webp",
                  width: imageWidth,
                  height: imageHeight,
                  cacheHeight: imageCacheHeight,
                  cacheWidth: imageCacheWidth,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            height: defaultHeight * 0.13,
            width: defaultWidth * 0.7,
            child: Card(
              elevation: kElevation,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: kVerticalPadding,
                  horizontal: kHorizontalPadding,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Lorem ipsum lorem dae soreum',
                      style: kTitleStyle,
                    ),
                    Text(
                      'Lorem',
                      style: kTitleStyle,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          '\$ 5.50',
                          style: TextStyle(
                            fontSize: kTitleStyle?.fontSize,
                            color: Theme.of(context).colorScheme.onError ,
                            fontFamily: kTitleStyle?.fontFamily,
                          ),
                        ),
                        Icon(
                          Icons.favorite,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
