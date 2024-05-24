import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:hfoods/constants/theme_data.dart';
import 'package:hfoods/pages/navigation/navigation_page.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    const textTheme = TextTheme();
    const materialTheme = MaterialTheme(textTheme);

    return GetMaterialApp(
      title: 'HFoods',
      theme: materialTheme.theme(
        MaterialTheme.lightScheme().toColorScheme(),
      ),
      home: const NavigationPage(),
    );
  }
}
