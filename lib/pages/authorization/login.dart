import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hfoods/pages/authorization/signup.dart';
import 'package:hfoods/pages/navigation/navigation_page.dart';
import 'package:hfoods/widgets/long_button.dart';

import '../../constants/dimensions.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login>
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
                      height: defaultHeight * 0.25,
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
                          'Welcome back',
                          style: textTheme.headlineSmall
                              ?.copyWith(fontWeight: FontWeight.w500),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: defaultWidth,
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
                          ' Ut elit massa, rhoncus eget arcu quis, aliquet rutrum quam.',
                          maxLines: 2,
                          style: textTheme.bodyMedium?.copyWith(
                            color: colorScheme.onSurfaceVariant.withAlpha(100),
                          ),
                          textAlign: TextAlign.start,
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
                            onPressed: () =>
                                Get.to(() => const NavigationPage()),
                            title: Text(
                              'SIGN IN',
                              style: textTheme.labelLarge
                                  ?.copyWith(color: colorScheme.onPrimary),
                            ),
                          ),
                        ),
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
                            Text(
                              'Keep Sign In',
                              style: textTheme.bodyMedium,
                            ),
                            Expanded(
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Forgot password?',
                                  style: textTheme.bodyMedium?.copyWith(
                                    color: colorScheme.primary,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      const Spacer(),
                      if (!_isKeyboardVisible)
                        const Text("Don't have an account ?"),
                      if (!_isKeyboardVisible) const Spacer(),
                      if (!_isKeyboardVisible)
                        SizedBox(
                          width: defaultWidth,
                          child: LongButton(
                            backgroundColor: colorScheme.secondary,
                            onPressed: () => Get.to(() => const Signup()),
                            title: Text(
                              'CREATE AN ACCOUNT',
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
