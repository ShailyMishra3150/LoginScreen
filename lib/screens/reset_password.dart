import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatefulWidget {
  @override
  _ResetPasswordScreen createState() => _ResetPasswordScreen();
}

class _ResetPasswordScreen extends State<ResetPasswordScreen> {
  bool _isObscureText=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
        const Padding(
        padding: EdgeInsets.only(top: 80.0, bottom: 20.0),
        child: Image(
          image: AssetImage('assets/images/reset.jpg'),
          height: 250,
          width: 150,
        ),
      ),
              Padding(
                padding: EdgeInsets.only(top: 8.0,bottom: 2.0,left: 8.0),
                child: Text(
                  "Reset"
                  ,
                  style: TextStyle(
                      fontSize: 35,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:1.0,left: 8.0,bottom: 2.0),
                child: Text(
                  "Password"
                  ,
                  style: TextStyle(
                      fontSize: 35,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
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
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide()),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
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
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide()),
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
      ]
    ),
    )
    );
  }
}
