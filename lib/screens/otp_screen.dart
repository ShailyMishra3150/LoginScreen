import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';


class OTPScreen extends StatefulWidget {
  @override
  _OTPScreen createState() => _OTPScreen();
}

class _OTPScreen extends State<OTPScreen> {

  int pinLength = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
        Padding(
        padding: EdgeInsets.only(top: 60.0, bottom: 20.0),
        child: Image(
          image: AssetImage('assets/images/otp.jpg'),
          height: 350,
          width: 150,
        ),
      ),

      Padding(
        padding: EdgeInsets.only(top: 8.0,bottom: 2.0,left: 8.0),
        child: Text(
          "Enter OTP"
          ,
          style: TextStyle(
              fontSize: 35,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold),
        ),
      ),
              Padding(
                padding: EdgeInsets.only(top: 4.0,left: 8.0),
                child: Text(
                  "A four digit code has been sent to ",
                  style: TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0,left: 8.0),
                child: Text(
                  "+91 9083990020 ",
                  style: TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 30),
                  child: PinCodeTextField(
                    pinBoxHeight: 50,
                    pinBoxWidth: 50,

                    pinTextStyle: TextStyle(fontSize: 20),
                    autofocus: true,
                    maxLength: pinLength,
                    hideCharacter: true,
                    highlightAnimation: true,
                    highlightAnimationBeginColor: Colors.black,
                    highlightAnimationEndColor: Colors.white,
                    onDone: (otp) {
                      // Do something with the entered OTP
                      print("Entered OTP: $otp");
                    },
                  ),
                ),
              ],
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

      ]
    ),
      )
    );
  }
}
