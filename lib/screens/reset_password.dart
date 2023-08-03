import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'login_screen.dart';

class ResetPasswordScreen extends StatefulWidget {
  @override
  _ResetPasswordScreen createState() => _ResetPasswordScreen();
}

class _ResetPasswordScreen extends State<ResetPasswordScreen> {
  bool _isObscureText=true;
  late String  email ;
  TextEditingController _password=TextEditingController();
  TextEditingController _confirm_password=TextEditingController();
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
            padding: EdgeInsets.only(top: 80.0.sp, bottom: 20.0.sp),
            child: Image(
              image: AssetImage('assets/images/reset.jpg'),
              height: 250.sp,
              width: 150.sp,
            ),
        ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.0.sp,bottom: 2.0.sp,left: 8.0.sp),
                    child: Text(
                      "Reset"
                      ,
                      style: TextStyle(
                          fontSize: 35.sp,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top:1.0.sp,left: 8.0.sp,bottom: 2.0.sp),
                    child: Text(
                      "Password"
                      ,
                      style: TextStyle(
                          fontSize: 35.sp,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0.sp),
                    child: TextFormField(
                      controller: _password,
                      keyboardType: TextInputType.text,
                      obscureText:_isObscureText,
                      decoration: InputDecoration(
                        hintText: 'New password',
                        prefixIcon: Icon(Icons.lock_outline),
                        suffixIcon: IconButton(icon: Icon( _isObscureText
                            ? Icons.visibility_off
                            : Icons.visibility,), onPressed: () {
                          setState(() {
                            _isObscureText=!_isObscureText;
                          });
                        },),

                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0.sp),
                            borderSide: BorderSide()),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a password';
                        }
                        if (value.length < 8) {
                          return 'Password must be at least 8 characters';
                        }
                        return null;
                      },

                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.all(16.0.sp),
                    child: TextFormField(
                      controller: _confirm_password,
                      keyboardType: TextInputType.text,
                      obscureText:_isObscureText,
                      decoration: InputDecoration(
                        hintText: 'Confirm new password',
                        prefixIcon: Icon(Icons.lock_outline),
                        suffixIcon: IconButton(icon: Icon( _isObscureText
                            ? Icons.visibility_off
                            : Icons.visibility,), onPressed: () {
                          setState(() {
                            _isObscureText=!_isObscureText;
                          });
                        },),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0.sp),
                            borderSide: BorderSide()),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a confirm password';
                        }
                        if (_password.text!=_confirm_password.text) {
                          return 'Password does not match';
                        }
                        return null;
                      },

                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top:30.0.sp,left: 8.0.sp,right: 8.0.sp,bottom: 20.sp),
                    child: SizedBox(
                      height: 50.sp,
                      width: 350.sp,
                      child: ElevatedButton(
                        onPressed: () {
                          if(_formKey.currentState!.validate()){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LoginScreen()),
                            );
                          }
                          else{
                            print("Unsuccesful submission");
                          }
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
