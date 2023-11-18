import 'package:breathe_fresh/Screens/getStarted.dart';
import 'package:flutter/material.dart';
import 'package:breathe_fresh/Components/RoundedButton.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'welcome_screen';
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('Images/Pollutionlogin3.png'),
                fit: BoxFit.cover),
          ),
          child: Center(
            //To make the text widget come in the center
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 320.0,
                ),
                const Center(
                  child: Text(
                    'WELCOME \n TO \n BREATHE FRESH!',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    textAlign: TextAlign
                        .center, //We can add the image and the text inside the container by making the container size as infinity of width and height
                  ),
                ),
                const SizedBox(height: 10.0),
                const Text(
                  'Air pollution refers to any physical, chemical or \n biological change in the air. It is the contamination of air by harmful gases, dust and smoke which affects plants, animals and humans drastically',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.2,
                      wordSpacing: 2.0),
                ),
                const SizedBox(
                  height: 170.0,
                ),
                RoundedButton(
                  title: 'GETTING STARTED',
                  color: const Color.fromRGBO(74, 218, 88, 1),
                  onPessed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const GetStarted())));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
