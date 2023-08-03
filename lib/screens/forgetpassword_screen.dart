import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'otp_screen.dart';

class ForgetPasswordScreen extends StatefulWidget {
  @override
  _ForgetPasswordScreen createState() => _ForgetPasswordScreen();
}

class _ForgetPasswordScreen extends State<ForgetPasswordScreen> {
  late String phone;
  final GlobalKey<FormState> _formKey=GlobalKey<FormState>();
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
                      image: AssetImage('assets/images/forgetpassword.png'),
                      height: 250.sp,
                      width: 150.sp,
                    ),
                  ),

                 Padding(
                  padding: EdgeInsets.only(top: 8.0.sp,bottom: 2.0.sp,left: 8.0.sp),
                  child: Text(
                    "Forget"
                    ,
                    style: TextStyle(
                        fontSize: 35.sp,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top:2.0.sp,left: 8.0.sp,bottom: 2.0.sp),
                  child: Text(
                    "Password?"
                    ,
                    style: TextStyle(
                        fontSize: 35.sp,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 1.0.sp,bottom: 8.0.sp,left: 8.0.sp),
                  child: Text(
                    "Don't Worry it happens .Please enter the address associated with your account",
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top:30.0.sp,left: 8.0.sp),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0.sp),
                          borderSide: BorderSide()),
                      hintText: 'Enter phoneNumber',
                   prefixIcon: Icon(Icons.phone)
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your mobile number';
                      }
                      if (value.length < 9 ) {
                        return 'Please enter valid mobile number';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      phone = value! ;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:30.0.sp,left: 8.0.sp,right: 8.0.sp,bottom: 20.sp),
                  child: SizedBox(
                    height: 50.sp,
                    width: 350.sp,
                    child: ElevatedButton(
                      onPressed: () {
                        if(_formKey.currentState!.validate()){
                          Navigator.push(
                               context,
                                MaterialPageRoute(builder: (context) => OTPScreen()),
                          );
                          print("SuccessFul");
                        }
                        else{
                          print("Unsuccesful submission");
                        }
                        //Navigator.push(
                        //  context,
                       //   MaterialPageRoute(builder: (context) => OTPScreen()),
                      //  );
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
