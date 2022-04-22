import 'package:flutter/material.dart';
import 'package:whatsapp/home.dart';

void main() {
  runApp(const WhatsApp());
}

class WhatsApp extends StatelessWidget {
  const WhatsApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp Clon',
      theme: ThemeData(
        highlightColor: const Color(0xffffffff),
        appBarTheme: const AppBarTheme(
          color: Color(0xff008069),
        ),
        tabBarTheme: const TabBarTheme(
          labelStyle: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          unselectedLabelColor: Color(0xffb0d3cd),
          unselectedLabelStyle: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        primaryColor: const Color(0xff008069),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: const Color(0xff00a884),
          tertiary: const Color(0xff25D366),
        ),
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 36.0,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
          headline2: TextStyle(
            fontSize: 36.0,
            fontWeight: FontWeight.bold,
            color: Color(0xff5f5fff),
          ),
          headline3: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
          headline4: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            color: Colors.black54,
          ),
          headline5: TextStyle(
            fontSize: 23.0,
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          bodyText1: TextStyle(
            fontSize: 25.0,
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.bold,
          ),
          bodyText2: TextStyle(
            fontSize: 20.0,
            color: Colors.grey,
            fontWeight: FontWeight.w600,
          ),
          subtitle1: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            color: Color(0xffb7b7d2),
          ),
        ),
      ),
      home: const Home(),
    );
  }
}
