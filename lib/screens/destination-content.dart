import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_page/custom_design2.dart';

import 'homescreen.dart';

class DestinationContentScreen extends StatefulWidget {
  @override
  _DestinationContentScreen createState() => _DestinationContentScreen();
}

class _DestinationContentScreen extends State<DestinationContentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 60.sp,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home,size: 35.sp,color: Colors.white,),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
            ),
            Icon(
              Icons.work_rounded,
              color: Colors.white,
              size: 35.sp,
            ),
            Icon(
              Icons.favorite_rounded,
              color: Colors.white,
              size: 35.sp,
            ),
            Icon(
              Icons.person,
              color: Colors.white,
              size: 35.sp,
            )
          ],
        ),
      ),
      body: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            width: 600.sp,
            height: 350.sp,
            decoration: BoxDecoration(
           //   color: Colors.green
            ),
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/kashmir.jpg',
                  height: 280.sp,
                  fit: BoxFit.cover,
                ),

                Positioned(
                  top: 250.sp,
                  left: 20.sp,
                  right: 20.sp,
                  bottom: 40.sp,
                 // height: 20.sp,
                  child: Container(
                    //color: Colors.blue,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0.sp),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.sp, 3.sp),
                          blurRadius: 6.sp,
                          spreadRadius: 0.sp,
                        ),
                      ],
                    ),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(left: 30.0.sp, right: 20.0.sp),
                          child: Text(
                            'Offer',
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 30.0.sp, right: 20.0.sp),
                          child: Text(
                            'Details',
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15.sp),
                          child: Text(
                            'Reviews',
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0.sp),
            child: Text('What you will see',style: TextStyle(fontSize: 30.sp,fontWeight: FontWeight.bold,color: Colors.black),),
          ),

          Padding(
            padding:  EdgeInsets.only(left: 10.0.sp,top: 10.sp,),
            child: Text('Jammu and Kashmir, formerly one of the largest princely states of India, is bounded to the east by the Indian union territory of Ladakh, to the south by the Indian states of Himachal Pradesh and Punjab, to the southwest by Pakistan, and to the northwest by the Pakistani-administered portion of Kashmir. The administrative capitals are Srinagar in summer and Jammu in winter. Area 16,309 square miles (101,387 square km). Pop. (2011) 12,367,013.',
              style: TextStyle(fontSize: 14.0.sp,color: Colors.grey),),
          ),
        ],

      ),
    );
  }
}
