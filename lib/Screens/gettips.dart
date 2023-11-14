import 'package:breathe_fresh/Screens/IndoorScreen.dart';
import 'package:flutter/material.dart';
import 'package:breathe_fresh/Components/Frosterglass.dart';
import 'homeScreen.dart';

class gettips extends StatefulWidget {
  static String id = "gettips";
  static String state1 = "good";
  static String gas =
      "Particulate Matter(PM), \nNitrogen Dioxide (NO2),\nSulfur Dioxide (SO2),\n Ozone (O3),\n Carbon Monoxide (CO).";
  static String mask =
      "Surgical Masks, N95 \nRespirators, \nKN95 Masks,\n Reusable Cloth Masks, \nP100 Respirators.";
  static String precausion =
      "Minimize exposure to\n polluted air by staying \n indoors on days with\n high pollution levels,\n especially during peak\n traffic hours.";
  const gettips({super.key});

  @override
  State<gettips> createState() => _gettipsState();
}

class _gettipsState extends State<gettips> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('Images/getipspg.png'), fit: BoxFit.cover)),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Row(children: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => IndoorScreen()));
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new_sharp,
                    color: Colors.white,
                    size: 45,
                  ),
                ),
                SizedBox(
                  width: 60,
                ),
                Center(
                  child: Text(
                    'HEALTH TIPS',
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 35,
                        fontFamily: 'Roboto'),
                  ),
                ),
              ]),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Air Quality : " + gettips.state1,
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              FrostedGlassBox(
                  theWidth: 330.0,
                  theHeight: 160.0,
                  theChild: Row(children: <Widget>[
                    Icon(
                      Icons.co2_outlined,
                      size: 70,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      gettips.gas,
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ])),
              FrostedGlassBox(
                  theWidth: 330.0,
                  theHeight: 160.0,
                  theChild: Row(children: <Widget>[
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      gettips.mask,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Icon(
                      Icons.masks,
                      size: 70,
                      color: Colors.black,
                    ),
                  ])),
              FrostedGlassBox(
                  theWidth: 330.0,
                  theHeight: 160.0,
                  theChild: Row(children: <Widget>[
                    Icon(
                      Icons.emergency,
                      size: 70,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      gettips.precausion,
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ])),
              Flexible(
                flex: 1,
                child: Container(
                  height: 55,
                  width: 330,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white.withOpacity(0.5),
                  ),
                  child: Row(
                    children: <Widget>[
                      const SizedBox(
                        width: 30,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                        },
                        icon: const Icon(Icons.home),
                        iconSize: 40,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        width: 60,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => gettips()));
                        },
                        icon: const Icon(
                          Icons.refresh,
                          color: Colors.black,
                          size: 40,
                        ),
                      ),
                      const SizedBox(width: 80),
                      const Icon(
                        Icons.send,
                        color: Colors.black,
                        size: 40,
                      )
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
