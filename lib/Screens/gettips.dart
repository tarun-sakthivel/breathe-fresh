import 'package:breathe_fresh/Screens/IndoorScreen.dart';
import 'package:flutter/material.dart';
import 'package:breathe_fresh/Components/Frosterglass.dart';
import 'homeScreen.dart';

class gettips extends StatefulWidget {
  static String id = "gettips";
  static String state1 = "Good";
  static String gas =
      "Particulate Matter(PM), \nNitrogen Dioxide (NO2),\nSulfur Dioxide (SO2),\n Ozone (O3),\n Carbon Monoxide (CO).";
  static String mask =
      "Surgical Masks, N95 \n Respirators, KN95 Masks,\n Reusable Cloth Masks, \nP100 Respirators.";
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
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('Images/getipspg.png'), fit: BoxFit.cover)),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.topCenter,
                color: Colors.black.withOpacity(0.4),
                height: 75,
                child: Row(children: <Widget>[
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const IndoorScreen()));
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new_sharp,
                      color: Color.fromARGB(255, 215, 211, 211),
                      size: 45,
                    ),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  const Center(
                    child: Text(
                      'HEALTH TIPS',
                      style: TextStyle(
                          color: Color.fromARGB(255, 254, 254, 254),
                          fontSize: 30,
                          fontFamily: 'Roboto'),
                    ),
                  ),
                ]),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "Air Quality : ${gettips.state1}",
                style: TextStyle(
                    backgroundColor: Colors.black.withOpacity(0.4),
                    fontFamily: 'Roboto',
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromARGB(255, 255, 252, 252)),
              ),
              const SizedBox(
                height: 10,
              ),
              FrostedGlassBox(
                  theWidth: 330.0,
                  theHeight: 160.0,
                  theChild: Row(children: <Widget>[
                    const Icon(
                      Icons.co2_outlined,
                      size: 70,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      gettips.gas,
                      style: const TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 215, 211, 211)),
                    ),
                  ])),
              FrostedGlassBox(
                  theWidth: 330.0,
                  theHeight: 160.0,
                  theChild: Row(children: <Widget>[
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      gettips.mask,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 215, 211, 211),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const SizedBox(
                        width: 63,
                        height: 85,
                        child: Image(image: AssetImage('Icons/ptdmask.png')))
                  ])),
              FrostedGlassBox(
                  theWidth: 330.0,
                  theHeight: 160.0,
                  theChild: Row(children: <Widget>[
                    const SizedBox(
                      width: 5,
                    ),
                    const SizedBox(
                      height: 73,
                      width: 85,
                      child: Image(image: AssetImage('Icons/hrtpulse.png')),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Text(
                      gettips.precausion,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 215, 211, 211),
                      ),
                    ),
                  ])),
              Flexible(
                flex: 1,
                child: Container(
                  height: 55,
                  width: 330,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white.withOpacity(0.3),
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const gettips()));
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
