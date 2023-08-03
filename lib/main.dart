import 'package:flutter/material.dart';
import 'package:login_page/screens/destination-content.dart';
import 'package:login_page/screens/destination_screen.dart';
import 'package:login_page/screens/forgetpassword_screen.dart';
import 'package:login_page/screens/homescreen.dart';
import 'package:login_page/screens/login_screen.dart';
import 'package:login_page/screens/otp_screen.dart';
import 'package:login_page/screens/reset_password.dart';
import 'package:login_page/screens/signup_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',

          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          builder: (context, child) {
            return MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
                child: child ?? const SizedBox());
          },

          home: HomeScreen(),
          //LoginScreen()
          //OTPScreen()
          //ForgetPasswordScreen()
          //ResetPasswordScreen()
        );
      },
    );
  }
}
