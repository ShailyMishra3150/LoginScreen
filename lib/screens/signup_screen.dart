import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late String  email,name,phone ;
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
            padding: EdgeInsets.only(top: 30.0.sp, bottom: 10.0.sp),
            child: Image(
              image: AssetImage('assets/images/signup.jpg'),
              height: 250.sp,
              width: 150.sp,
            ),
        ),
                  Padding(
                    padding:  EdgeInsets.all(8.0.sp),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          fontSize: 35.sp,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.all(8.0.sp),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0.sp),

                            borderSide: BorderSide()),
                        hintText: 'Enter your email address',
                        prefixIcon: Icon(Icons.email_outlined)
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
                    padding:  EdgeInsets.all(8.0.sp),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0.sp),

                              borderSide: BorderSide()),
                          hintText: 'Full Name',
                        prefixIcon: Icon(Icons.person)

                      ),
                      validator: (value){
                        if (value!.isEmpty) {
                          return 'Please enter your name ';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        name = value!;
                      },

                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.all(8.0.sp),
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0.sp),

                            borderSide: BorderSide()),
                        hintText: 'Mobile',
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
                    padding:  EdgeInsets.only(left: 8.0.sp,top: 4.0.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,

                      children: [

                           Text(
                            "By signing up you're agree to our",
                            style: TextStyle(
                                fontSize: 13.sp,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),

                        Padding(
                          padding: EdgeInsets.only(left: 4.0.sp),
                          child: Text(
                            "Terms & Conditions",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: 8.0.sp,top: 2.0.sp),
                    child: Row(
                     children: [
                       Text(
                         "and",
                         style: TextStyle(
                             fontSize: 13.sp,
                             fontStyle: FontStyle.normal,
                             fontWeight: FontWeight.bold,
                             color: Colors.grey),
                       ),
                       Padding(
                         padding: EdgeInsets.only(left: 4.0.sp),
                         child: Text(
                           "Privacy Policy.",
                           style: TextStyle(
                               fontSize: 14.sp,
                               fontStyle: FontStyle.normal,
                               fontWeight: FontWeight.bold,
                               color: Colors.blue),
                         ),
                       ),
                     ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top:30.0.sp,left: 8.0.sp,right: 8.0.sp),
                    child: SizedBox(
                      height: 50.sp,
                      width: 350.sp,
                      child: ElevatedButton(
                        onPressed: () {

                  if(_formKey.currentState!.validate()){
                      print("SuccessFul");
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
                  ),

                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                           Padding(
                            padding:  EdgeInsets.all(10.0.sp),
                            child: Text(
                              "Joined us before ?",
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                              textAlign: TextAlign.center,
                            ),

                          ),
                        Text('Login',style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold,color: Colors.blue,
                        ),)
                      ],
                    ),


        ]
    ),
          )
        ),
      )
    );
  }
}
