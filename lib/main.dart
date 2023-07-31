import 'package:flutter/material.dart';
import 'package:login_page/screens/forgetpassword_screen.dart';
import 'package:login_page/screens/login_screen.dart';
import 'package:login_page/screens/otp_screen.dart';
import 'package:login_page/screens/reset_password.dart';
import 'package:login_page/screens/signup_screen.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:SignUpScreen(),
      //LoginScreen()
      //OTPScreen()
      //ForgetPasswordScreen()
      //ResetPasswordScreen()
      //

    );
  }
}


