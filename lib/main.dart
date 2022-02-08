import 'package:flutter/material.dart';
import 'package:login_app/Screen/Home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:login_app/Screen/Login_screen.dart';
import 'package:login_app/Screen/Register_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/LoginScreen',
      routes: {
       '/LoginScreen':(context)=>LoginScreen(),
       '/SignupScreen':(context)=>SignupScreen(),
       '/HomeScreen':(context)=>HomeScreen()
      },
    );
  }
}
