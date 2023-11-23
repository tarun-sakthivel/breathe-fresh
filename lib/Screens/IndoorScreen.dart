import 'package:flutter/material.dart';
import 'homeScreen.dart';
import 'gettips.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:awesome_notifications/awesome_notifications.dart';

final storage = FirebaseStorage.instance;
final db = FirebaseFirestore.instance;

class IndoorScreen extends StatefulWidget {
  static String id = 'IndoorScreen';

  const IndoorScreen({super.key});

  @override
  State<IndoorScreen> createState() => _IndoorScreenState();
}

class _IndoorScreenState extends State<IndoorScreen> {
  @override
  void getaqi() async {
    await for (final snapshot in db.collection('AQI').snapshots()) {
      for (final AQI in snapshot.docs) {
        print(AQI.data);
      }
    }
  }

  triggerNotification() {
    AwesomeNotifications().createNotification(
        content: NotificationContent(
            id: 10,
            channelKey: 'lpg_gas_alert',
            title: 'Alert!!',
            body: 'lpg gas is leaked'));
  }
  /*void disp(var AQI3) {
    print(AQI3);
    Text(
      AQI3,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: Colors.white,
        fontSize: 60,
        fontWeight: FontWeight.w400,
      ),
    );
  }*/

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            StreamBuilder<QuerySnapshot>(
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

                      for (final sensor_value in AQI!) {
                        final aqiValue = sensor_value[('aqi')];
                        final lpgIndicator = sensor_value[('lpg')];
                        messagesWidgets.add(aqiValue);
                        messagesWidgets1.add(lpgIndicator);
                        if (messagesWidgets1[0] == 'gas is detected') {
                          triggerNotification();
                        }
                      }
                      return Container(
                        width: 435,
                        height: 451,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.black54,
                        ),
                        child: Column(
                          children: <Widget>[
                            const SizedBox(
                              height: 10,
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
                              ],
                            ), //have to change what to change and list in that
                            const SizedBox(
                              height: 88,
                            ),

                            Text(messagesWidgets[0],
                                style: const TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Colors.white,
                                  fontSize: 60,
                                  fontWeight: FontWeight.w400,
                                )),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text(
                              "HARAZDOUS",
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            SizedBox(
                              height: 44,
                              width: 162,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(
                                          0xffd9d9d9), //this primary function is used to add/change the color of the following elevated button
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50))),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const gettips()));
                                  },
                                  child: const Text(
                                    'Get Tips',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      color: Colors.black,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )),
                            ),
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'AQI Forecast',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: <Widget>[
                    const SizedBox(
                      width: 42,
                    ),
                    Container(
                      height: 143,
                      width: 141,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45),
                          color: const Color(0xe262e257)),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '60',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 40,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                          Text(
                            'Tuesday',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Expanded(
                      child: Container(
                        height: 143,
                        width: 111,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(45),
                            color: const Color(0xc9ff7a00)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              '150',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 40,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                            Text(
                              'Wednesday',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    )
                  ],
                ),
                const SizedBox(
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
                      const SizedBox(
                        width: 30,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
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
                          IndoorScreen();
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
                        icon: Icon(
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
          ],
        ),
      ),
    );
  }
}
