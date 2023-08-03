import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return

      SafeArea(
        child: Row(

          children: [
            Padding(
              padding:  EdgeInsets.only(bottom: 20.0.sp),
              child: Container(
                height: 270.sp,
                width: 190.sp,
                  decoration: BoxDecoration(
                    color: Colors.white,
              borderRadius: BorderRadius.circular(15.0.sp),

                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.sp, 3.sp),
                        blurRadius: 6.sp,
                        spreadRadius: 0.sp,
                      ),
                    ],
        ),
                child: Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.all(8.0.sp),
                      child: Image.asset(
                        'assets/images/kashmir.jpg',
                        width: 170.sp,
                        height: 160.sp,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text('Kashmir,India',style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),),
                    Padding(
                      padding:  EdgeInsets.only(left: 90.0.sp),
                      child: Positioned(
                        bottom: 16.sp,
                        right: 16.sp,
                        child: FloatingActionButton(
                          onPressed: () {
                            // Add your FAB action here
                          },
                          backgroundColor: Colors.blue, // Set the background color here
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0.sp), // Set the shape here
                          ),
                          mini: true, // Set mini to true for a smaller FAB
                          child: Icon(Icons.add,color: Colors.white,),
                        ),
                      ),
                    ),


                  ],
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 10.0.sp,bottom: 20.0.sp),
              child: Container(
                height: 270.sp,
                width: 190.sp,

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25.0.sp),

                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.sp, 3.sp),// Specifies the shadow's position (x, y)
                      blurRadius: 6.sp, // Specifies the blur radius of the shadow
                      spreadRadius: 0.sp, // Specifies the extent of the shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.all(8.0.sp),
                      child: Image.asset(
                        'assets/images/taj mahal.jpg',
                        width: 170.sp,
                        height: 160.sp,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text('Taj Mahal,India',style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),),
                    Padding(
                      padding:  EdgeInsets.only(left: 90.0.sp),
                      child: Positioned(
                        bottom: 16.sp,
                        right: 16.sp,
                        child: FloatingActionButton(
                          onPressed: () {
                            // Add your FAB action here
                          },
                          backgroundColor: Colors.blue, // Set the background color here
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0.sp), // Set the shape here
                          ),
                          mini: true, // Set mini to true for a smaller FAB
                          child: Icon(Icons.add,color: Colors.white,),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0.sp,bottom: 20.0.sp),
              child: Container(
                height: 270.sp,
                width: 190.sp,
                padding:  EdgeInsets.only(left: 6.0.sp),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25.0.sp),

                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.sp, 3.sp), // Specifies the shadow's position (x, y)
                      blurRadius: 6.sp, // Specifies the blur radius of the shadow
                      spreadRadius: 0.sp, // Specifies the extent of the shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.all(8.0.sp),
                      child: Image.asset(
                        'assets/images/lotus_temple.jpg',
                        width: 170.sp,
                        height: 160.sp,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text('Lotus Temple,India',style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),),
                    Padding(
                      padding:  EdgeInsets.only(left: 90.0.sp),
                      child: Positioned(
                        bottom: 16.sp,
                        right: 16.sp,
                        child: FloatingActionButton(
                          onPressed: () {
                            // Add your FAB action here
                          },
                          backgroundColor: Colors.blue, // Set the background color here
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0.sp), // Set the shape here
                          ),
                          mini: true, // Set mini to true for a smaller FAB
                          child: Icon(Icons.add,color: Colors.white,),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 10.0.sp,bottom: 20.0.sp),
              child: Container(
                height: 270.sp,
                width: 190.sp,
                padding:  EdgeInsets.only(left: 6.0.sp),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25.0.sp),

                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.sp, 3.sp), // Specifies the shadow's position (x, y)
                      blurRadius: 6.sp, // Specifies the blur radius of the shadow
                      spreadRadius: 0.sp, // Specifies the extent of the shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.all(8.0.sp),
                      child: Image.asset(
                        'assets/images/mountain shimla.jpg',
                        width: 170.sp,
                        height: 160.sp,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text('Shimla,India',style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),),
                    Padding(
                      padding:  EdgeInsets.only(left: 90.0.sp),
                      child: Positioned(
                        bottom: 16.sp,
                        right: 16.sp,
                        child: FloatingActionButton(
                          onPressed: () {
                            // Add your FAB action here
                          },
                          backgroundColor: Colors.blue, // Set the background color here
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0.sp), // Set the shape here
                          ),
                          mini: true, // Set mini to true for a smaller FAB
                          child: Icon(Icons.add,color: Colors.white,),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 10.0.sp,bottom: 20.0.sp),
              child: Container(
                height: 270.sp,
                width: 190.sp,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25.0.sp),

                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.sp, 3.sp), // Specifies the shadow's position (x, y)
                      blurRadius: 6.sp, // Specifies the blur radius of the shadow
                      spreadRadius: 0.sp, // Specifies the extent of the shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.all(8.0.sp),
                      child: Image.asset(
                        'assets/images/thailand.jpg',
                        width: 170.sp,
                        height: 160.sp,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text('Thailand,Thailand',style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),),
                    Padding(
                      padding:  EdgeInsets.only(left: 90.0.sp),
                      child: Positioned(
                        bottom: 16.sp,
                        right: 16.sp,
                        child: FloatingActionButton(
                          onPressed: () {
                            // Add your FAB action here
                          },
                          backgroundColor: Colors.blue, // Set the background color here
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0.sp), // Set the shape here
                          ),
                          mini: true, // Set mini to true for a smaller FAB
                          child: Icon(Icons.add,color: Colors.white,),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],

    ),
      );



  }
}
