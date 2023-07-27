import 'package:flutter/material.dart';
class ForgetPasswordScreen extends StatefulWidget{
  @override
  _ForgetPasswordScreen createState() => _ForgetPasswordScreen();
}

class _ForgetPasswordScreen extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0,bottom: 20.0),
              child: Image(
                image: AssetImage('assets/images/forgot-password.png'),
                height: 100,
                width: 100,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(color: Colors.blue)),
                hintText: 'Enter phoneNumber',
                filled: true,
                fillColor: Colors.black12,
              ),
            ),
          ),
          SizedBox(height: 50,
          width: 350,),
          ElevatedButton(
            onPressed: () {
              // TODO: Implement password reset functionality
            },
            child: Text('Reset Password'),
          ),
        ],
      ),
    );
  }
}

