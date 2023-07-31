import 'package:flutter/material.dart';


class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
        const Padding(
        padding: EdgeInsets.only(top: 30.0, bottom: 10.0),
        child: Image(
          image: AssetImage('assets/images/signup.jpg'),
          height: 250,
          width: 150,
        ),
      ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      fontSize: 35,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),

                        borderSide: BorderSide()),
                    hintText: 'Enter your email address',
                    prefixIcon: Icon(Icons.email_outlined)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),

                          borderSide: BorderSide()),
                      hintText: 'Full Name',
                    prefixIcon: Icon(Icons.nature_outlined)

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

                        borderSide: BorderSide()),
                    hintText: 'Mobile',
                   prefixIcon: Icon(Icons.phone)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0,top: 4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,

                  children: [

                       Text(
                        "By signing up you're agree to our",
                        style: TextStyle(
                            fontSize: 15,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),

                    Text(
                      "Terms & Conditions",
                      style: TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0,top: 2.0),
                child: Row(
                 children: [
                   Text(
                     "and",
                     style: TextStyle(
                         fontSize: 15,
                         fontStyle: FontStyle.normal,
                         fontWeight: FontWeight.bold,
                         color: Colors.grey),
                   ),
                   Text(
                     "Privacy Policy",
                     style: TextStyle(
                         fontSize: 15,
                         fontStyle: FontStyle.normal,
                         fontWeight: FontWeight.bold,
                         color: Colors.blue),
                   ),
                 ],
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
              ),

                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                       Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Joined us before ?",
                          style: TextStyle(
                              fontSize: 15,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          textAlign: TextAlign.center,
                        ),

                      ),
                    Text('Login',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.blue,
                    ),)
                  ],
                ),


      ]
    )
      )
    );
  }
}
