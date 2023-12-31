import 'package:flutter/material.dart';
import 'xo.dart';
import 'loginScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: LoginScreen(),
      initialRoute: LoginScreen.routeName,
      routes: {
        XOGame.routeName:(context)=> XOGame(),
        LoginScreen.routeName:(context)=>LoginScreen(),
      },
    );
  }
}