import 'package:flutter/material.dart';
import 'package:your_store/pages/login_page.dart';
import 'package:your_store/pages/menu_page.dart';
import 'package:your_store/pages/quest_pedido.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your Store',
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const LoginPage(),
        '/quest-pedido': (context) => const QuestPedido(),
        '/menu': (context) => const MenuPage(),
      },
      theme: ThemeData(
        textTheme: Typography.englishLike2018.apply(
          fontSizeFactor: 1,
          bodyColor: const Color(0xff000000),
          displayColor: const Color(0xff000000)),
        fontFamily: 'Poppins',
        primarySwatch: const MaterialColor(0xFF0E2B27, {
          50: Color.fromRGBO(15, 44, 40, .1),
          100: Color.fromRGBO(15, 44, 40, .2),
          200: Color.fromRGBO(15, 44, 40, .3),
          300: Color.fromRGBO(15, 44, 40, .4),
          400: Color.fromRGBO(15, 44, 40, .5),
          500: Color.fromRGBO(15, 44, 40, .6),
          600: Color.fromRGBO(15, 44, 40, .7),
          700: Color.fromRGBO(15, 44, 40, .8),
          800: Color.fromRGBO(15, 44, 40, .9),
          900: Color.fromRGBO(15, 44, 40, 1),
        }),
        primaryColorDark: const MaterialColor(0xff000000, {
          50: Color.fromRGBO(0, 26, 158, .1),
          100: Color.fromRGBO(0, 93, 158, .2),
          200: Color.fromRGBO(0, 93, 158, .3),
          300: Color.fromRGBO(0, 93, 158, .4),
          400: Color.fromRGBO(0, 93, 158, .5),
          500: Color.fromRGBO(0, 93, 158, .6),
          600: Color.fromRGBO(0, 93, 158, .7),
          700: Color.fromRGBO(0, 93, 158, .8),
          800: Color.fromRGBO(0, 93, 158, .9),
          900: Color.fromRGBO(0, 93, 158, 1),
        }),
        primaryColorLight: const MaterialColor(0xffffffff, {
          50: Color.fromRGBO(0, 93, 158, .1),
          100: Color.fromRGBO(0, 93, 158, .2),
          200: Color.fromRGBO(0, 93, 158, .3),
          300: Color.fromRGBO(0, 93, 158, .4),
          400: Color.fromRGBO(0, 93, 158, .5),
          500: Color.fromRGBO(0, 93, 158, .6),
          600: Color.fromRGBO(0, 93, 158, .7),
          700: Color.fromRGBO(0, 93, 158, .8),
          800: Color.fromRGBO(0, 93, 158, .9),
          900: Color.fromRGBO(0, 93, 158, 1),
        }),
        colorScheme: ThemeData().colorScheme.copyWith(
          primary: const MaterialColor(0xFF0E2B27, {
            50: Color.fromRGBO(0, 47, 123, .1),
            100: Color.fromRGBO(0, 47, 123, .2),
            200: Color.fromRGBO(0, 47, 123, .3),
            300: Color.fromRGBO(0, 47, 123, .4),
            400: Color.fromRGBO(0, 47, 123, .5),
            500: Color.fromRGBO(0, 47, 123, .6),
            600: Color.fromRGBO(0, 47, 123, .7),
            700: Color.fromRGBO(0, 47, 123, .8),
            800: Color.fromRGBO(0, 47, 123, .9),
            900: Color.fromRGBO(0, 47, 123, 1),
          }),
          secondary: const MaterialColor(0xFFCF9B51, {
            50: Color.fromRGBO(56, 156, 214, .1),
            100: Color.fromRGBO(56, 156, 214, .2),
            200: Color.fromRGBO(56, 156, 214, .3),
            300: Color.fromRGBO(56, 156, 214, .4),
            400: Color.fromRGBO(56, 156, 214, .5),
            500: Color.fromRGBO(56, 156, 214, .6),
            600: Color.fromRGBO(56, 156, 214, .7),
            700: Color.fromRGBO(56, 156, 214, .8),
            800: Color.fromRGBO(56, 156, 214, .9),
            900: Color.fromRGBO(56, 156, 214, 1),
          }),
        ),
        scaffoldBackgroundColor: const Color(0xffffffff),
        hintColor: const Color(0xFFFFD3AE),
        unselectedWidgetColor: const Color(0xFFA4CCC4),
      ),
    );
  }
}
