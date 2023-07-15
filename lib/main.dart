import 'package:flutter/material.dart';
import 'package:app_login/src/pages/home_page.dart';
import 'package:app_login/src/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/welcome': (context) => const WelcomePage(),
      },
    );
  }
}
