import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hfoods/pages/authorization/login.dart';
import 'package:hfoods/widgets/long_button.dart';

import '../../constants/dimensions.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver {
  bool? isChecked = true;
  bool isPasswordVisible = false;
  Widget visibilityIcon = const Icon(Icons.visibility);

  late TapGestureRecognizer _termsTapGestureRecognizer;
  late TapGestureRecognizer _conditionsTapGestureRecognizer;
  late AnimationController _animationController;

  late final Animation<double> _sizeFactorAnimation;
  bool _isKeyboardVisible = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    _animationController = AnimationController(
        duration: const Duration(milliseconds: 800), vsync: this)
      ..forward();

    _sizeFactorAnimation = CurvedAnimation(
        parent: _animationController, curve: Curves.easeInOutCubic);

    _termsTapGestureRecognizer = TapGestureRecognizer()..onTap = onTermsPressed;
    _conditionsTapGestureRecognizer = TapGestureRecognizer()
      ..onTap = onConditionsPressed;
  }

  void onTermsPressed() {
    print('Terms');
  }

  void onConditionsPressed() {
    print('Conditions');
  }

  @override
  void didChangeMetrics() {
    final bottomInsets = WidgetsBinding.instance.window.viewInsets.bottom;
    setState(() {
      _isKeyboardVisible = bottomInsets > 0;
      if (_isKeyboardVisible) {
        _animationController.reverse();
      } else {
        _animationController.forward();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final double defaultHeight = MediaQuery.of(context).size.height;
    final double defaultWidth = MediaQuery.of(context).size.width;

    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: kVerticalPadding,
            horizontal: kHorizontalPadding,
          ),
          child: Form(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizeTransition(
                  sizeFactor: _sizeFactorAnimation,
                  child: Center(
                    child: SizedBox(
                      height: defaultHeight * 0.18,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Horlapp',
                            style: textTheme.displayMedium?.copyWith(
                              color: colorScheme.onPrimaryContainer,
                            ),
                          ),
                          Text(
                            'Restaurant App',
                            style: textTheme.titleSmall?.copyWith(
                                color: colorScheme.onSecondaryContainer),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Spacer(),
                      SizedBox(
                        width: defaultWidth,
                        child: Text(
                          'Create your account',
                          style: textTheme.headlineSmall
                              ?.copyWith(fontWeight: FontWeight.w500),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: defaultWidth,
                        child: Text(
                          'Lorem ipsum dolor',
                          maxLines: 1,
                          style: textTheme.bodyMedium?.copyWith(
                            color: colorScheme.onSurfaceVariant.withAlpha(100),
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      const Spacer(),
                      TextFormField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.account_circle),
                          hintText: 'John Doe',
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: colorScheme.primary,
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.email),
                          hintText: 'johndoe@email.com',
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: colorScheme.primary,
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      TextFormField(
                        obscureText: isPasswordVisible,
                        obscuringCharacter: '•',
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: IconButton(
                            icon: visibilityIcon,
                            onPressed: () {
                              setState(() {
                                isPasswordVisible = !isPasswordVisible;
                                visibilityIcon = isPasswordVisible
                                    ? const Icon(Icons.visibility_off)
                                    : const Icon(Icons.visibility);
                              });
                            },
                          ),
                          hintText: '••••••••••',
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: colorScheme.primary,
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      if (!_isKeyboardVisible)
                        SizedBox(
                          width: defaultWidth,
                          child: LongButton(
                            title: Text(
                              'SIGN UP',
                              style: textTheme.labelLarge
                                  ?.copyWith(color: colorScheme.onPrimary),
                            ),
                          ),
                        ),
                      if (!_isKeyboardVisible) const Spacer(),
                      if (!_isKeyboardVisible)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Checkbox(
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value;
                                });
                              },
                            ),
                            const SizedBox(
                              width: kSizedBoxWidth * 0.1,
                            ),
                            Expanded(
                              child: RichText(
                                text: TextSpan(
                                    text:
                                        "By tapping \"Sign up\" you accept our ",
                                    style: textTheme.bodyMedium?.copyWith(
                                      color: colorScheme.onSurfaceVariant
                                          .withAlpha(100),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: ' terms ',
                                        recognizer: _termsTapGestureRecognizer,
                                        style: textTheme.bodyMedium?.copyWith(
                                          color: colorScheme.primary,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' and ',
                                        style: textTheme.bodyMedium?.copyWith(
                                          color: colorScheme.onSurfaceVariant
                                              .withAlpha(100),
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' conditions.',
                                        recognizer:
                                            _conditionsTapGestureRecognizer,
                                        style: textTheme.bodyMedium?.copyWith(
                                          color: colorScheme.primary,
                                        ),
                                      )
                                    ]),
                              ),
                            ),
                          ],
                        ),
                      const Spacer(),
                      if (!_isKeyboardVisible)
                        Text(
                          'Already have account ?',
                          style: textTheme.bodyMedium?.copyWith(
                            color: colorScheme.onSurfaceVariant.withAlpha(100),
                          ),
                        ),
                      if (!_isKeyboardVisible) const Spacer(),
                      if (!_isKeyboardVisible)
                        SizedBox(
                          width: defaultWidth,
                          child: LongButton(
                            onPressed: () => Get.to(() => const Login()),
                            backgroundColor: colorScheme.secondary,
                            title: Text(
                              'SIGN IN',
                              style: textTheme.labelLarge?.copyWith(
                                color: colorScheme.onSecondary,
                              ),
                            ),
                          ),
                        ),
                      if (!_isKeyboardVisible)
                        const Spacer(
                          flex: 2,
                        ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _conditionsTapGestureRecognizer.dispose();
    _termsTapGestureRecognizer.dispose();
    _animationController.dispose();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
}
