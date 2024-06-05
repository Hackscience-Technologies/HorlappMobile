import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:hfoods/constants/theme_data.dart';
import 'package:hfoods/pages/authorization/login.dart';
import 'package:hfoods/pages/authorization/signup.dart';
import 'package:hfoods/pages/navigation/navigation_page.dart';

import 'constants/text_styles.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    TextTheme textTheme = createTextTheme(context, "Poppins", "Poppins");

    MaterialTheme theme = MaterialTheme(textTheme);

    return GetMaterialApp(
      title: 'HFoods',
      theme: brightness != Brightness.light ? theme.light() : theme.dark(),
      // home: const NavigationPage(),
      home: const Login(),
    );
  }
}
