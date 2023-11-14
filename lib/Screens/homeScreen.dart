import 'package:breathe_fresh/Screens/Hazardous.dart';
import 'package:breathe_fresh/Screens/IndoorScreen.dart';
import 'package:breathe_fresh/Screens/OutdoorScreen.dart';
import 'package:breathe_fresh/Screens/getStarted.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'Moderate.dart';
import 'Unhealthy.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'homeScreen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var AQI = 32;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('Images/Homescreenbg.png'),
                        fit: BoxFit.fill)),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(340, 40, 20, 10),
                child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, GetStarted.id);
                  },
                  icon: Icon(Icons.logout_outlined),
                  iconSize: 45,
                  color: Colors.black,
                  hoverColor: Colors.black26,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(88, 20, 20, 10),
              child: const Text(
                '\n\nBREATHE \n FRESH!!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 60,
                  fontFamily: 'PassionOne',
                  letterSpacing: 5,
                ),
              ),
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: const SizedBox(
                      height: 330,
                    ),
                  ),
                  Center(
                    child: Container(
                        height: 470,
                        width: 425,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(43)),
                        child: Column(
                          children: <Widget>[
                            TextButton(
                                style: TextButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(45))),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              IndoorScreen()));
                                },
                                child: const Column(children: <Widget>[
                                  Stack(children: <Widget>[
                                    Center(
                                      child: Opacity(
                                        opacity: 0.65,
                                        child: Image(
                                          image:
                                              AssetImage('Images/indoor1.png'),
                                          height: 224,
                                          width: 360,
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: Row(children: <Widget>[
                                        SizedBox(
                                          height: 210,
                                          width: 80,
                                        ),
                                        Icon(
                                          Icons.home_filled,
                                          size: 45,
                                          color: Colors.black,
                                        ),
                                        Text(
                                          ' INDOOR',
                                          style: TextStyle(
                                              fontFamily: 'Righteous',
                                              fontSize: 45,
                                              color: Colors.black),
                                        ),
                                      ]),
                                    )
                                  ]),
                                ])),
                            TextButton(
                                style: TextButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(45))),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              OutdoorScreen()));
                                },
                                child: const Column(children: <Widget>[
                                  Stack(children: <Widget>[
                                    Opacity(
                                      opacity: 0.7,
                                      child: Image(
                                        image:
                                            AssetImage('Images/outdoor1.png'),
                                        height: 204,
                                        width: 560,
                                      ),
                                    ),
                                    Center(
                                      child: Row(children: <Widget>[
                                        SizedBox(
                                          height: 210,
                                          width: 50,
                                        ),
                                        Icon(
                                          Icons.air_outlined,
                                          size: 45,
                                          color: Colors.black,
                                        ),
                                        Text(
                                          ' OUTDOOR',
                                          style: TextStyle(
                                              fontFamily: 'Righteous',
                                              fontSize: 45,
                                              color: Colors.black),
                                        ),
                                      ]),
                                    )
                                  ]),
                                ]))
                          ],
                        )),
                  ),
                ]),
          ],
        ),
      ),
    );
    Column(children: [
      if (AQI > 0 && AQI <= 45) ...[
        IconButton(
            onPressed: () {
              Navigator.pushNamed(context, OutdoorScreen.id);
            },
            icon: Icon(
              Icons.next_plan_outlined,
              size: 44,
            ))
      ] else if (AQI > 45 && AQI < 100) ...[
        IconButton(
            onPressed: () {
              Navigator.pushNamed(context, Moderate.id);
            },
            icon: Icon(
              Icons.next_plan_outlined,
              size: 44,
            ))
      ] else if (AQI >= 100 && AQI <= 189) ...[
        IconButton(
            onPressed: () {
              Navigator.pushNamed(context, Unhealthy.id);
            },
            icon: Icon(
              Icons.next_plan_outlined,
              size: 44,
            ))
      ] else if (AQI >= 190) ...[
        IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Hazrdous()));
          },
          icon: Icon(
            Icons.next_plan_outlined,
            size: 44,
          ),
        )
      ]
    ]);
  }
}
