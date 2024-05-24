import 'package:flutter/material.dart';

import '../constants/dimensions.dart';

class LongButton extends StatelessWidget {

  final String title;
  final void Function()? onPressed;

  const LongButton({super.key, required this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        padding: const MaterialStatePropertyAll<EdgeInsets>(
          EdgeInsets.symmetric(
            vertical: kVerticalPadding * 2,
            horizontal: kHorizontalPadding,
          ),
        ),
        backgroundColor: MaterialStatePropertyAll<Color>(
            Theme.of(context).colorScheme.primaryContainer,
        ),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: Theme.of(context).textTheme.labelLarge?.copyWith(
            color: Theme.of(context).colorScheme.onPrimary),
      ),
    );
  }
}
