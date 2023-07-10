import 'package:flutter/material.dart';
import 'package:user_account_app/pages/home_page.dart';
import 'package:user_account_app/pages/main_menu.dart';

void main() => runApp(MyApp());

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
