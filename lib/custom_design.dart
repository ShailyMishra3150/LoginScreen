import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OTPBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Form(
        child:
      Padding(
       padding: EdgeInsets.only(top: 20.0.sp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 64.sp,
                width: 68.sp,
                child: TextFormField(
                  textAlign: TextAlign.center,

                  style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold),
                  keyboardType: TextInputType.number,
               //   maxLength: 1,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),

                  ],
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.transparent,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2.sp,color: Colors.black),
                          borderRadius: BorderRadius.circular(12.sp)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2.sp,color: Colors.black12),
                          borderRadius: BorderRadius.circular(12.sp)
                      )


                  ),

                ),
              )



]
        ),
      ),
      ),
    );


  }
}
