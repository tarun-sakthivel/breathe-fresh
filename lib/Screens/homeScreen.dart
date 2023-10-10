import 'dart:ffi';

import 'package:breathe_fresh/Screens/IndoorScreen.dart';
import 'package:breathe_fresh/Screens/OutdoorScreen.dart';
import 'package:flutter/material.dart';
import 'Hazardous.dart';
import 'Moderate.dart';
import 'Unhealthy.dart';
import 'OutdoorScreen.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'homeScreen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var AQI = 700;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 500,
                height: 360,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                  'Images/Homescreenbg.png',
                ))),
              ),
              Container(
                height: 100,
                width: 410,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(42),
                    color: Color(0xccd9d9d9)),
              ),
              SizedBox(
                height: 7,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, IndoorScreen.id);
                      },
                      icon: Icon(
                        Icons.next_week_sharp,
                        size: 32,
                        color: Colors.black,
                      ))
                ],
              ),
              Column(
                children: [
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
                          Navigator.pushNamed(context, Hazrdous.id);
                        },
                        icon: Icon(
                          Icons.next_plan_outlined,
                          size: 44,
                        ))
                  ]
                ],
              ),
            ]),
      ),
    );
  }
}
