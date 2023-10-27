import 'package:breathe_fresh/Components/RoundedButton.dart';
import 'package:flutter/material.dart';
import 'homeScreen.dart';
import 'IndoorScreen.dart';
import 'OutdoorScreen.dart';

class GetStarted extends StatefulWidget {
  static String id = 'getStarted';
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('Images/Pollutionlogin3.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 150.0,
                ),
                Text(
                  'Create Your \nAccount',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 42,
                      color: Colors.white70),
                  textAlign: TextAlign.center,
                ),
                Text(
                  '____________\nJoin the community to \nBreathe Fresh!!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      wordSpacing: 1.0),
                ),
                SizedBox(
                  height: 130.0,
                ),
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Container(
                    width: 400,
                    height: 390,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(36),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 6,
                          width: 175,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(27),
                            color: Color(0xffd9d9d9),
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color: Color.fromARGB(255, 238, 184, 249),
                          ),
                          margin: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 16.0),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.email,
                                color: Color.fromARGB(255, 156, 39, 176),
                                size: 30.0,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Email',
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black54),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color: Color.fromARGB(255, 238, 184, 249),
                          ),
                          margin: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 16.0),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.supervised_user_circle,
                                color: Color.fromARGB(255, 156, 39, 176),
                                size: 30.0,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Username',
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black54),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color: Color.fromARGB(255, 238, 184, 249),
                          ),
                          margin: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 16.0),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.lock,
                                color: Color.fromARGB(255, 156, 39, 176),
                                size: 30.0,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Password',
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black54),
                              ),
                            ],
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: RoundedButton(
                              title: 'Register',
                              color: Colors.purple,
                              onPessed: () {
                                Navigator.pushNamed(
                                    context,
                                    HomeScreen
                                        .id); //For now for the running of the app we are routing it to the indoor screen later we will connect it to the homescreen
                              }),
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 66.0,
                            ),
                            Text(
                              'Already have an account?',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black45),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, HomeScreen.id);
                              },
                              child: Text(
                                'click here',
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: 14),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
