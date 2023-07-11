import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'pages/main_menu.dart';

void main() async {
  //  userInformation = await userRandom();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/main-menu',
      routes: {
        '/main-menu': (context) => const MainMenu(),
        '/home-page': (context) => const HomePage(),
      },
    );
  }
}
