import 'package:flutter/material.dart';
import 'homeScreen.dart';

class IndoorScreen extends StatefulWidget {
  static String id = 'IndoorScreen';
  const IndoorScreen({super.key});

  @override
  State<IndoorScreen> createState() => _IndoorScreenState();
}

class _IndoorScreenState extends State<IndoorScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Container(
              width: 435,
              height: 451,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.black54,
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.menu_rounded,
                        color: Colors.white70,
                        size: 62,
                      ),
                    ],
                  ), //have to change what to change and list in that
                  SizedBox(
                    height: 88,
                  ),
                  Text("379",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 60,
                        fontWeight: FontWeight.w400,
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "HARAZDOUS",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    height: 44,
                    width: 162,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color(
                                0xffd9d9d9), //this primary function is used to add/change the color of the following elevated button
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        onPressed: () {
                          Navigator.pushNamed(context, HomeScreen.id);
                        },
                        child: Text(
                          'Get Tips',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                          ),
                        )),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Text(
                  'AQI Forecast',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 42,
                    ),
                    Container(
                      height: 143,
                      width: 141,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45),
                          color: Color(0xe262e257)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '60',
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                          Text(
                            'Tuesday',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    Container(
                      height: 143,
                      width: 141,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45),
                          color: Color(0xc9ff7a00)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '150',
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                          Text(
                            'Wednesday',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 55,
                  width: 330,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey,
                  ),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 30,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, HomeScreen.id);
                        },
                        icon: Icon(Icons.home),
                        iconSize: 40,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Icon(
                        Icons.refresh,
                        color: Colors.black,
                        size: 40,
                      ),
                      SizedBox(width: 80),
                      Icon(
                        Icons.send,
                        color: Colors.black,
                        size: 40,
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
