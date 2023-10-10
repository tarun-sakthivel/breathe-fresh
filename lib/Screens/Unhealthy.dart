import 'package:flutter/material.dart';
import 'homeScreen.dart';
import 'Hazardous.dart';

class Unhealthy extends StatefulWidget {
  static String id = 'Unhealthy';
  const Unhealthy({super.key});

  @override
  State<Unhealthy> createState() => _UnhealthyState();
}

class _UnhealthyState extends State<Unhealthy> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              width: 435,
              height: 431,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xffe1432d),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 22,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        width: 20,
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, HomeScreen.id);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: Colors.white,
                            size: 45,
                          )),
                      Image(image: AssetImage('Images/Ellipse 14.png')),
                      SizedBox(
                        width: 82,
                      ),
                      Text(
                        'Air Quality',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                      SizedBox(
                        width: 72,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 8,
                          ),
                          PopupMenuButton(
                            itemBuilder: (context) => [
                              PopupMenuItem(
                                child: Row(
                                  children: <Widget>[Icon(Icons.home)],
                                ),
                              ),
                            ],
                            child: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                              size: 50,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      SizedBox(
                        width: 356,
                      ),
                      Image(image: AssetImage('Images/Ellipse 14.png')),
                    ],
                  ), //have to change what to change and list in that
                  SizedBox(
                    height: 38,
                  ),
                  Text("Unhealthy",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 60,
                        fontWeight: FontWeight.w400,
                      )),

                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 151,
                      ),
                      Image(image: AssetImage('Images/Ellipse 14.png')),
                    ],
                  ),
                  Container(
                    width: 170,
                    height: 45,
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.white,
                      width: 2.7,
                    )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AQI',
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          '189',
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Image(image: AssetImage('Images/Ellipse 14.png')),
                    ],
                  ),
                  SizedBox(
                    height: 44,
                  ),
                  Image(image: AssetImage('Images/Ellipse 14.png')),
                  Row(
                    children: [
                      SizedBox(
                        width: 356,
                      ),
                      Image(image: AssetImage('Images/Ellipse 14.png')),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Hazardous",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.white)),
                      SizedBox(
                        width: 16,
                      ),
                      Text("Moderate",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.white)),
                      SizedBox(
                        width: 16,
                      ),
                      Text("Unhealthy",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.white)),
                      SizedBox(
                        width: 16,
                      ),
                      Text("Very Unhealthy",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.white)),
                      SizedBox(
                        width: 16,
                      ),
                      Text("Hazardous",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.white)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 58,
            ),
            Row(children: <Widget>[
              SizedBox(
                width: 50,
              ),
              Text("report ",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54)),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Stale \nAir",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                    )),
                Image.asset('Images/heart2.png')
              ],
            ),
            SizedBox(
              height: 123,
            ),
            Container(
              height: 55,
              width: 330,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xff49da58),
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
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Hazrdous.id);
                    },
                    icon: Icon(
                      Icons.refresh,
                      color: Colors.black,
                      size: 40,
                    ),
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
      ),
    );
  }
}
