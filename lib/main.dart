import 'package:flutter/material.dart';
import 'package:intern_task/presentation/screens/shared/splash.dart';
import 'package:intern_task/presentation/screens/user/login.dart';
import 'package:intern_task/presentation/screens/user/signup.dart';
import 'package:intern_task/presentation/screens/user/user_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/", routes: {
      "/": (context) => const Splash(),
      "/login": (context) => Login(),
      "/signup": (context) => SignUp(),
      
      
    });
      
  }
}


