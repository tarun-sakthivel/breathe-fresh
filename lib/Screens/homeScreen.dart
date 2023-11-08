import 'package:breathe_fresh/Screens/IndoorScreen.dart';
import 'package:breathe_fresh/Screens/OutdoorScreen.dart';
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
      home: Scaffold(
        body: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('Images/Homescreenbg.png'),
                      fit: BoxFit.cover)),
            ),
            const Text(
              '\n\nBREATHE \n FRESH!!',
              style: TextStyle(color: Colors.black54, fontSize: 55),
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    height: 350,
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
                                  Navigator.pushNamed(context, IndoorScreen.id);
                                },
                                child: const Column(children: <Widget>[
                                  Stack(children: <Widget>[
                                    Center(
                                      child: Image(
                                        image: AssetImage('Images/indoor.png'),
                                        color:
                                            Color.fromARGB(125, 218, 204, 204),
                                        colorBlendMode: BlendMode.lighten,
                                        height: 234,
                                        width: 340,
                                      ),
                                    ),
                                    Center(
                                      child: Row(children: <Widget>[
                                        SizedBox(
                                          height: 200,
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
                                  Navigator.pushNamed(
                                      context, OutdoorScreen.id);
                                },
                                child: const Column(children: <Widget>[
                                  Stack(children: <Widget>[
                                    Image(
                                      image: AssetImage('Images/outdoor1.png'),
                                      color: Color.fromARGB(125, 218, 204, 204),
                                      colorBlendMode: BlendMode.lighten,
                                      height: 204,
                                      width: 560,
                                    ),
                                    Center(
                                      child: Row(children: <Widget>[
                                        SizedBox(
                                          height: 200,
                                          width: 85,
                                        ),
                                        Icon(
                                          Icons.air_outlined,
                                          size: 45,
                                          color: Colors.black,
                                        ),
                                        Text(
                                          ' OUTDOOR',
                                          style: TextStyle(
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
  }
}
