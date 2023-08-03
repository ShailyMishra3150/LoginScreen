import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_page/custom_design2.dart';

import 'destination_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                "Hello,",
                style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                " Saravana",
                style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0.sp),
                child: CircleAvatar(
                  radius: 20.sp,
                  backgroundImage: AssetImage('assets/images/image.jpg'),
                ),
              )
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
            Icon(
              Icons.home,
              color: Colors.white,
              size: 35.sp,
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'App Drawer',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.sp,
                ),
              ),
            ),
            ListTile(
              title: Text('Option 1'),
              onTap: () {
                // Handle navigation for Option 1
              },
            ),
            ListTile(
              title: Text('Option 2'),
              onTap: () {
                // Handle navigation for Option 2
              },
            ),
            // Add more ListTiles for additional options
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20.0.sp),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.sp),
                  child: TextField(
                    decoration: InputDecoration(
                      //    filled: true,
                      // fillColor: Colors.grey[300],
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40.0.sp),
                          borderSide: BorderSide()),
                      hintText: 'Search a Places Here ...',
                      suffixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0.sp),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 16.0.sp, left: 2.0.sp),
                        child: Container(
                          width: 80.sp,
                          height: 40.sp,
                          padding: EdgeInsets.all(7.0.sp),
                          margin: EdgeInsets.all(8.0.sp),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25.0.sp),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.sp, 3.sp),
                                // Specifies the shadow's position (x, y)
                                blurRadius: 6.sp,
                                // Specifies the blur radius of the shadow
                                spreadRadius:
                                    0.sp, // Specifies the extent of the shadow
                              ),
                            ],
                          ),
                          child: Text(
                            "Place",
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16.0.sp, left: 4.0.sp),
                        child: Container(
                          width: 80.sp,
                          height: 40.sp,
                          padding: EdgeInsets.all(7.0.sp),
                          margin: EdgeInsets.all(8.0.sp),
//     color: Colors.blue,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25.0.sp),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.sp, 3.sp),
                                // Specifies the shadow's position (x, y)
                                blurRadius: 6.sp,
                                // Specifies the blur radius of the shadow
                                spreadRadius:
                                    0.sp, // Specifies the extent of the shadow
                              ),
                            ],
                          ),
                          child: Text(
                            "Gallery",
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16.0.sp, left: 4.0.sp),
                        child: Container(
                          width: 80.sp,
                          height: 40.sp,
                          margin: EdgeInsets.all(8.0.sp),
                          padding: EdgeInsets.all(7.0.sp),
//     color: Colors.blue,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25.0.sp),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.sp, 3.sp),
                                // Specifies the shadow's position (x, y)
                                blurRadius: 6.sp,
                                // Specifies the blur radius of the shadow
                                spreadRadius:
                                    0.sp, // Specifies the extent of the shadow
                              ),
                            ],
                          ),
                          child: Text(
                            "Culture",
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16.0.sp, left: 4.0.sp),
                        child: Container(
                          width: 80.sp,
                          height: 40.sp,
                          padding: EdgeInsets.all(7.0.sp),
                          margin: EdgeInsets.all(8.0.sp),
//     color: Colors.blue,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25.0.sp),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.sp, 3.sp),
                                // Specifies the shadow's position (x, y)
                                blurRadius: 6.sp,
                                // Specifies the blur radius of the shadow
                                spreadRadius:
                                    0.sp, // Specifies the extent of the shadow
                              ),
                            ],
                          ),
                          child: Text(
                            "Place",
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: 16.0.sp, left: 10.0.sp, bottom: 20.0.sp),
                    child: Text(
                      "Travels Places",
                      style: TextStyle(
                          fontSize: 26.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 16.0.sp, left: 40.0.sp, bottom: 20.0.sp),
                    child: TextButton(
                      onPressed: () {

                      }, child:Text(" Show More",  style: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                  )
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.sp),
                  child: Row(
                    children: [CustomContainer()],
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: 20.0.sp, left: 10.0.sp, bottom: 20.0.sp),
                    child: Text(
                      "Best Destinations",
                      style: TextStyle(
                          fontSize: 26.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 16.0.sp, left: 20.0.sp, bottom: 20.0.sp),
                    child: TextButton(
                     onPressed: () {
                       Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => DestinationScreen()),
                       );
                     }, child:Text(" Show More",  style: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 14.sp,
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0.sp),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(16.0.sp),
                            child: Container(
                                height: 150.sp,
                                width: 200.sp,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25.0.sp),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(0.sp, 3.sp),
                                      // Specifies the shadow's position (x, y)
                                      blurRadius: 6.sp,
                                      // Specifies the blur radius of the shadow
                                      spreadRadius: 0
                                          .sp, // Specifies the extent of the shadow
                                    ),
                                  ],
                                ),
                                child: Row(children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0.sp),
                                    child: Image.asset(
                                      'assets/images/kashmir.jpg',
                                      width: 90.sp,
                                      height: 100.sp,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 30.0.sp),
                                        child: Text(
                                          'Kashmir,India',
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 4.0.sp, left: 4.0.sp),
                                        child: Row(
                                          children: [
                                            Icon(Icons.star,
                                                size: 20.sp,
                                                color: Colors.yellow),
                                            Text(
                                              '5.5',
                                              style: TextStyle(
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ])),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(16.0.sp),
                            child: Container(
                                height: 150.sp,
                                width: 200.sp,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25.0.sp),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(0.sp, 3.sp),
                                      // Specifies the shadow's position (x, y)
                                      blurRadius: 6.sp,
                                      // Specifies the blur radius of the shadow
                                      spreadRadius: 0
                                          .sp, // Specifies the extent of the shadow
                                    ),
                                  ],
                                ),
                                child: Row(children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0.sp),
                                    child: Image.asset(
                                      'assets/images/mountain shimla.jpg',
                                      width: 90.sp,
                                      height: 100.sp,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 30.0.sp),
                                        child: Text(
                                          'Shimla,India',
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 4.0.sp, left: 4.0.sp),
                                        child: Row(
                                          children: [
                                            Icon(Icons.star,
                                                size: 20.sp,
                                                color: Colors.yellow),
                                            Text(
                                              '5.5',
                                              style: TextStyle(
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ])),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(16.0.sp),
                            child: Container(
                                height: 150.sp,
                                width: 200.sp,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25.0.sp),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(0, 3),
                                      // Specifies the shadow's position (x, y)
                                      blurRadius: 6.sp,
                                      // Specifies the blur radius of the shadow
                                      spreadRadius: 0
                                          .sp, // Specifies the extent of the shadow
                                    ),
                                  ],
                                ),
                                child: Row(children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      'assets/images/lotus_temple.jpg',
                                      width: 90.sp,
                                      height: 100.sp,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 30.0.sp),
                                        child: Text(
                                          'Delhi,India',
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 4.0.sp, left: 4.0.sp),
                                        child: Row(
                                          children: [
                                            Icon(Icons.star,
                                                size: 20.sp,
                                                color: Colors.yellow),
                                            Text(
                                              '5.5',
                                              style: TextStyle(
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ])),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
