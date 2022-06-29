import 'package:flutter/material.dart';
import 'login.dart';
import 'register.dart';
import 'routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        MyRoutes.loginPage: (context) => const LoginPage(),
        MyRoutes.registerPage: (context) => const RegisterPage()
      },
    );
  }
}
