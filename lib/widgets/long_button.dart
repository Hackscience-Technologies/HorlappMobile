import 'package:flutter/material.dart';

import '../constants/dimensions.dart';

class LongButton extends StatelessWidget {

  final Widget title;
  final void Function()? onPressed;

  const LongButton({super.key, required this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        padding: const MaterialStatePropertyAll<EdgeInsets>(
          EdgeInsets.symmetric(
            vertical: kVerticalPadding * 2,
            horizontal: kHorizontalPadding,
          ),
        ),
        backgroundColor: MaterialStatePropertyAll<Color>(
            Theme.of(context).colorScheme.secondary,
        ),
      ),
      onPressed: onPressed,
      child: title
    );
  }
}
