import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatefulWidget {
  @override
  _ForgetPasswordScreen createState() => _ForgetPasswordScreen();
}

class _ForgetPasswordScreen extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
               const Padding(
                padding: EdgeInsets.only(top: 60.0, bottom: 20.0),
                child: Image(
                  image: AssetImage('assets/images/forgetpassword.png'),
                  height: 250,
                  width: 150,
                ),
              ),

            const Padding(
              padding: EdgeInsets.only(top: 8.0,bottom: 2.0,left: 8.0),
              child: Text(
                "Forget"
                ,
                style: TextStyle(
                    fontSize: 35,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:2.0,left: 8.0,bottom: 2.0),
              child: Text(
                "Password?"
                ,
                style: TextStyle(
                    fontSize: 35,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1.0,bottom: 8.0,left: 8.0),
              child: Text(
                "Don't Worry it happens .Please enter the address associated with your account",
                style: TextStyle(
                    fontSize: 18,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:30.0,left: 8.0),
              child: TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide()),
                  hintText: 'Enter phoneNumber',
               prefixIcon: Icon(Icons.phone)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:30.0,left: 8.0,right: 8.0),
              child: SizedBox(
                height: 50,
                width: 350,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Submit',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
