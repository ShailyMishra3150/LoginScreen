import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_page/screens/forgetpassword_screen.dart';
import 'package:login_page/screens/signup_screen.dart';

import 'homescreen.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool _isObscureText=true;
  late String  email ;
  TextEditingController _password=TextEditingController();
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
                  Center(
                    child: Padding(
                      padding:  EdgeInsets.only(top: 50.0.sp,bottom: 10.0.sp),
                      child: Image(
                        image: AssetImage('assets/images/login.jpg'),
                        height: 250.sp,
                        width: 150.sp,
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.all(4.0.sp),
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 35.sp,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.all(2.0.sp),
                    child: Text(
                      "Login to continue using this app",
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.all(4.0.sp),
                    child: Text(
                      "Email",
                      style: TextStyle(
                        fontSize: 35.sp,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0.sp),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0.sp),

                            borderSide: BorderSide()),

                        hintText: 'Enter your email',
                        prefixIcon: Icon(Icons.email_outlined),


                      ),
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Please enter your email address';
                        }
                        bool emailValid=RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value);
                         if (!emailValid) {
                           return 'Please enter a valid email address';
                                 }
                              return null;
                                 },
                         onSaved: (value) {
                        email = value!;
                             },



                        ),
                    ),

                  Padding(
                    padding:  EdgeInsets.all(4.0.sp),
                    child: Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 35.sp,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.all(8.0.sp),
                    child: TextFormField(
                      controller: _password,
                      keyboardType: TextInputType.text,
                      obscureText:_isObscureText,
                      decoration: InputDecoration(
                        hintText: 'Enter password',
                       prefixIcon: Icon(Icons.lock_outline_sharp),
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

                    TextButton(
                       onPressed: () {
                         Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => ForgetPasswordScreen()),
                         );
                       },

                     child: Padding(
                       padding: EdgeInsets.only(left: 200.sp,),
                       child: Text('Forget password?',
                          style: TextStyle(fontWeight:FontWeight.bold ,color: Colors.grey,fontSize: 14.sp),
                textAlign: TextAlign.right,


    ),
                     ),
                   ),



                  Padding(
                    padding:  EdgeInsets.only(top: 20.0.sp),
                    child: Center(
                      child: SizedBox(
                        height: 50.sp,
                        width: 350.sp,
                        child: ElevatedButton(
                          onPressed: () {
                            if(_formKey.currentState!.validate()){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => HomeScreen()),
                              );
                            }
                            else{
                            print("Unsuccesful submission");
                            }
                          },
                          child: Text(
                            'Login',
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
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:  EdgeInsets.all(10.0.sp),
                        child: Text(
                          "Don't have an account?",
                          style: TextStyle(
                              fontSize: 15.sp,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          textAlign: TextAlign.center,
                        ),

                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUpScreen()),
                          );
                        },
                        child: Text('Click Register',style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold,color: Colors.blue,
                        ),),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}



