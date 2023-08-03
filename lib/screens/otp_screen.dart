import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_page/custom_design.dart';
import 'package:login_page/screens/reset_password.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';


class OTPScreen extends StatefulWidget {
  @override
  _OTPScreen createState() => _OTPScreen();
}

class _OTPScreen extends State<OTPScreen> {
  late String  otp_number ;
  final GlobalKey<FormState> _formKey=GlobalKey<FormState>();
  int pinLength = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
            Padding(
            padding: EdgeInsets.only(top: 60.0.sp, bottom: 20.0.sp),
            child: Image(
              image: AssetImage('assets/images/otp.jpg'),
              height: 350.sp,
              width: 150.sp,
            ),
        ),

        Padding(
            padding: EdgeInsets.only(top: 8.0.sp,bottom: 2.0.sp,left: 8.0.sp),
            child: Text(
              "Enter OTP"
              ,
              style: TextStyle(
                  fontSize: 35.sp,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold),
            ),
        ),
                  Padding(
                    padding: EdgeInsets.only(top: 4.0.sp,left: 8.0.sp),
                    child: Text(
                      "A four digit code has been sent to ",
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(bottom: 8.0.sp,left: 8.0.sp),
                    child: Text(
                      "+91 9083990020 ",
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ),


                  Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0.sp),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              OTPBox(),
                              OTPBox(),
                              OTPBox(),
                              OTPBox(),
                            ],
                          ),
                        ),


                    ),


                  Padding(
                    padding:  EdgeInsets.only(top:30.0.sp,left: 8.0.sp,right: 8.0.sp,bottom: 20.sp),
                    child: SizedBox(
                      height: 50.sp,
                      width: 350.sp,
                      child: ElevatedButton(

                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ResetPasswordScreen()),
                          );
                        },
                        child: Text(
                          'Submit',
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.sp))),
                      ),
                    ),
                  )

        ]
    ),
          ),
        ),
      )
    );
  }
}
