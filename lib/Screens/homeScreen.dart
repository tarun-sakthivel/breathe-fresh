import 'package:breathe_fresh/Screens/Hazardous.dart';
import 'package:breathe_fresh/Screens/IndoorScreen.dart';
import 'package:breathe_fresh/Screens/OutdoorScreen.dart';
import 'package:breathe_fresh/Screens/getStarted.dart';
import 'package:breathe_fresh/Screens/registrationsc.dart';
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
  late String Username1;
  var AQI = 63;
  HomeScreen1 obj = HomeScreen1();
  Registrationsc rc = const Registrationsc();
  testing ts = testing();

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
                padding: const EdgeInsets.fromLTRB(340, 40, 20, 10),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const GetStarted()));
                  },
                  icon: const Icon(Icons.logout_outlined),
                  iconSize: 45,
                  color: Colors.black,
                  hoverColor: Colors.black26,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(88, 20, 20, 10),
              child: Text(
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
                  const Expanded(
                    child: SizedBox(
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
                                              const IndoorScreen()));
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
                                              const OutdoorScreen()));
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
  }
}

class HomeScreen1 {
  var AQI;
  Outdoorstate(BuildContext context, var AQI) {
    Column(children: [
      if (AQI > 0 && AQI <= 45) ...[
        IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const OutdoorScreen()));
          },
          icon: const Icon(
            Icons.refresh,
            color: Colors.black,
            size: 40,
          ),
        ),
      ] else if (AQI > 45 && AQI < 100) ...[
        IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const Moderate()));
            },
            icon: const Icon(
              Icons.refresh,
              color: Colors.black,
              size: 40,
            ))
      ] else if (AQI >= 100 && AQI <= 189) ...[
        IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (Context) => const Unhealthy()));
            },
            icon: const Icon(
              Icons.refresh,
              color: Colors.black,
              size: 40,
            ))
      ] else if (AQI >= 190) ...[
        IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const Hazrdous()));
          },
          icon: const Icon(
            Icons.refresh,
            color: Colors.black,
            size: 40,
          ),
        )
      ]
    ]);
  }
}
