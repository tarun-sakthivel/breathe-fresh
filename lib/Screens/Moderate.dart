import 'package:flutter/material.dart';
import 'homeScreen.dart';
import 'gettips.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'Hazardous.dart';
import 'Unhealthy.dart';
import 'OutdoorScreen.dart';

final db = FirebaseFirestore.instance;

class Moderate extends StatefulWidget {
  static String id = 'Moderate';
  const Moderate({super.key});

  @override
  State<Moderate> createState() => _ModerateState();
}

class _ModerateState extends State<Moderate> {
  int? n;
  var AQI = 63;
  final HomeScreen1 obj = HomeScreen1();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StreamBuilder<QuerySnapshot>(
          stream: db.collection('AQI').snapshots(),
          builder: (context, snapshot) {
            //flutter async snapshot
            try {
              if (!snapshot.hasData) {
                return const Center(
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.lightBlueAccent,
                  ),
                );
              }

              if (snapshot.hasData) {
                final AQI = snapshot.data?.docs;
                List<String> messagesWidgets = [];
                List<String> messagesWidgets1 = [];
                int? a;

                for (final sensor_value in AQI!) {
                  final aqiValue = sensor_value[('aqi')];
                  final lpgIndicator = sensor_value[('lpg')];
                  messagesWidgets1.add(aqiValue);
                  messagesWidgets.add(lpgIndicator);
                }
                return Scaffold(
                  body: Column(
                    children: <Widget>[
                      Container(
                        width: 435,
                        height: 431,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color(0xffdce021),
                        ),
                        child: Column(
                          children: <Widget>[
                            const SizedBox(
                              height: 22,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                const SizedBox(
                                  width: 20,
                                ),
                                IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const HomeScreen()));
                                    },
                                    icon: const Icon(
                                      Icons.arrow_back_ios_new_rounded,
                                      color: Colors.white,
                                      size: 45,
                                    )),
                                const Image(
                                    image: AssetImage('Images/Ellipse 14.png')),
                                const SizedBox(
                                  width: 82,
                                ),
                                const Text(
                                  'Air Quality',
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 22,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  width: 72,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    PopupMenuButton(
                                      itemBuilder: (context) => [
                                        const PopupMenuItem(
                                          child: Row(
                                            children: <Widget>[
                                              Icon(Icons.home)
                                            ],
                                          ),
                                        ),
                                      ],
                                      child: const Icon(
                                        Icons.more_vert,
                                        color: Colors.white,
                                        size: 50,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(height: 15),
                            const Row(
                              children: [
                                SizedBox(
                                  width: 356,
                                ),
                                Image(
                                    image: AssetImage('Images/Ellipse 14.png')),
                              ],
                            ), //have to change what to change and list in that
                            const SizedBox(
                              height: 38,
                            ),
                            const Text("Moderate",
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Colors.white,
                                  fontSize: 60,
                                  fontWeight: FontWeight.w400,
                                )),

                            const SizedBox(
                              height: 15,
                            ),
                            const Row(
                              children: [
                                SizedBox(
                                  width: 151,
                                ),
                                Image(
                                    image: AssetImage('Images/Ellipse 14.png')),
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
                                  const Text(
                                    'AQI',
                                    style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 23,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  ),
                                  const SizedBox(
                                    width: 40,
                                  ),
                                  Text(
                                    messagesWidgets1[0],
                                    style: const TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            const Row(
                              children: [
                                Image(
                                    image: AssetImage('Images/Ellipse 14.png')),
                              ],
                            ),
                            const SizedBox(
                              height: 44,
                            ),
                            const Image(
                                image: AssetImage('Images/Ellipse 14.png')),
                            const Row(
                              children: [
                                SizedBox(
                                  width: 356,
                                ),
                                Image(
                                    image: AssetImage('Images/Ellipse 14.png')),
                              ],
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Hazardous",
                                    style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white)),
                                SizedBox(
                                  width: 16,
                                ),
                                Text("Moderate",
                                    style: TextStyle(
                                        fontFamily: "Roboto",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white)),
                                SizedBox(
                                  width: 16,
                                ),
                                Text("Unhealthy",
                                    style: TextStyle(
                                        fontFamily: "Roboto",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white)),
                                SizedBox(
                                  width: 16,
                                ),
                                Text("Very Unhealthy",
                                    style: TextStyle(
                                        fontFamily: "Roboto",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white)),
                                SizedBox(
                                  width: 16,
                                ),
                                Text("Hazardous",
                                    style: TextStyle(
                                        fontFamily: "Roboto",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white)),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 58,
                      ),
                      const Row(children: <Widget>[
                        SizedBox(
                          width: 50,
                        ),
                        Text("report ",
                            style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black54)),
                      ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text("Polluted\nMist",
                              style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 40,
                                fontWeight: FontWeight.w600,
                              )),
                          const SizedBox(
                            width: 5,
                          ),
                          Image.asset('Images/heart3.png')
                        ],
                      ),
                      const SizedBox(
                        height: 123,
                      ),
                      Container(
                        height: 55,
                        width: 330,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color(0xff49da58),
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
                                        builder: (context) =>
                                            const HomeScreen()));
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
                                a = int.parse(messagesWidgets1[0]);
                                n = a;
                                [
                                  if (n! < 45) ...[
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const OutdoorScreen()))
                                  ] else if (n! < 100) ...[
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Moderate()))
                                  ] else if (n! <= 189) ...[
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (Context) =>
                                                const Unhealthy()))
                                  ] else if (n! > 189) ...[
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Hazrdous()))
                                  ]
                                ];
                              },
                              icon: const Icon(
                                Icons.refresh,
                                color: Colors.black,
                                size: 40,
                              ),
                            ),
                            const SizedBox(width: 80),
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const gettips()));
                              },
                              icon: const Icon(
                                Icons.send,
                                color: Colors.black,
                                size: 40,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              }
            } on Exception catch (e) {
              print(e);
            }
            return const Text(
              'Loading',
              style: TextStyle(
                  fontSize: 32,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            );
          }),
    );
  }
}
