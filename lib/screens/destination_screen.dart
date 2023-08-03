import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_page/custom_design2.dart';
import 'package:login_page/screens/destination-content.dart';

import 'homescreen.dart';

class DestinationScreen extends StatefulWidget {
  @override
  _DestinationScreen createState() => _DestinationScreen();
}

class _DestinationScreen extends State<DestinationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.sp,
        title: Padding(
          padding: EdgeInsets.only(top: 10.0.sp, left: 4.0.sp),
          child: Row(
            //  mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Best,",
                style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                "Destination",
                style: TextStyle(
                  fontSize: 28.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 20.0.sp),
                  child: Icon(
                    Icons.settings_outlined,
                    color: Colors.grey,
                    size: 25.sp,
                  ))
            ],
          ),
        ),
      ),
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
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
              children: [
            Padding(
                padding: EdgeInsets.only(bottom: 20.0.sp,top:8.0.sp,left: 8.0.sp,right: 8.0.sp),
                child: Container(
                    height: 300.sp,
                    width: 350.sp,
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
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0.sp),
                          child: Image.asset(
                            'assets/images/kashmir.jpg',
                            width: 350.sp,
                            height: 200.sp,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Row(
                         children: [
                           Padding(
                             padding:  EdgeInsets.only(left: 10.0.sp),
                             child: Text('Kashmir,India',style: TextStyle(fontSize: 24.sp,fontWeight: FontWeight.bold),),
                           ),

                           Padding(
                             padding:  EdgeInsets.only(left: 120.0.sp,),
                             child: Positioned(
                               child: FloatingActionButton(
                                 onPressed: () {
                                   Navigator.push(
                                     context,
                                     MaterialPageRoute(builder: (context) => DestinationContentScreen()),
                                   );
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

                      ],
                    )
                )
            ),

                Padding(
                    padding: EdgeInsets.only(bottom: 20.0.sp,top:8.0.sp,left: 8.0.sp,right: 8.0.sp),
                    child: Container(
                        height: 300.sp,
                        width: 350.sp,
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
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0.sp),
                              child: Image.asset(
                                'assets/images/lotus_temple.jpg',
                                width: 350.sp,
                                height: 200.sp,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:  EdgeInsets.only(left: 10.0.sp),
                                  child: Text('Lotus Temple,India',style: TextStyle(fontSize: 24.sp,fontWeight: FontWeight.bold),),
                                ),

                                Padding(
                                  padding:  EdgeInsets.only(left: 60.0.sp,),
                                  child: Positioned(
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

                          ],
                        )
                    )
                ),
                Padding(
                    padding: EdgeInsets.only(bottom: 20.0.sp,top:8.0.sp,left: 8.0.sp,right: 8.0.sp),
                    child: Container(
                        height: 300.sp,
                        width: 350.sp,
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
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0.sp),
                              child: Image.asset(
                                'assets/images/mountain shimla.jpg',
                                width: 350.sp,
                                height: 200.sp,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:  EdgeInsets.only(left: 10.0.sp),
                                  child: Text('Shimla,India',style: TextStyle(fontSize: 24.sp,fontWeight: FontWeight.bold),),
                                ),

                                Padding(
                                  padding:  EdgeInsets.only(left: 140.0.sp,),
                                  child: Positioned(
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

                          ],
                        )
                    )
                ),
                Padding(
                    padding: EdgeInsets.only(bottom: 20.0.sp,top:8.0.sp,left: 8.0.sp,right: 8.0.sp),
                    child: Container(
                        height: 300.sp,
                        width: 350.sp,
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
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0.sp),
                              child: Image.asset(
                                'assets/images/taj mahal.jpg',
                                width: 350.sp,
                                height: 200.sp,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:  EdgeInsets.only(left: 10.0.sp),
                                  child: Text('Taj Mahal,India',style: TextStyle(fontSize: 24.sp,fontWeight: FontWeight.bold),),
                                ),

                                Padding(
                                  padding:  EdgeInsets.only(left: 100.0.sp,),
                                  child: Positioned(
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

                          ],
                        )
                    )
                ),
                Padding(
                    padding: EdgeInsets.only(bottom: 20.0.sp,top:8.0.sp,left: 8.0.sp,right: 8.0.sp),
                    child: Container(
                        height: 300.sp,
                        width: 350.sp,
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
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0.sp),
                              child: Image.asset(
                                'assets/images/thailand.jpg',
                                width: 350.sp,
                                height: 200.sp,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:  EdgeInsets.only(left: 10.0.sp),
                                  child: Text('Thailand',style: TextStyle(fontSize: 24.sp,fontWeight: FontWeight.bold),),
                                ),

                                Padding(
                                  padding:  EdgeInsets.only(left: 170.0.sp,),
                                  child: Positioned(
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

                          ],
                        )
                    )
                )
          ]
          )
        ],
      ),
    );
  }
}
