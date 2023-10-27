import 'package:breathe_fresh/Components/RoundedButton.dart';
import 'package:flutter/material.dart';
import 'homeScreen.dart';
import 'IndoorScreen.dart';
import 'OutdoorScreen.dart';
import 'package:breathe_fresh/Components/Constants.dart';
import 'registrationsc.dart';

class GetStarted extends StatefulWidget {
  static String id = 'getStarted';
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  late String email;
  late String password;
  late String Username;
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
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color: Color.fromARGB(255, 238, 184, 249),
                          ),
                          margin: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 16.0),
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            obscureText: true,
                            onChanged: (value) {
                              password = value;
                            },
                            decoration: ktextFieldDecoration.copyWith(
                                contentPadding: EdgeInsets.fromLTRB(1, 0, 0, 0),
                                icon: Icon(
                                  Icons.email,
                                  color: Colors.purple,
                                  size: 32,
                                ),
                                border: InputBorder.none,
                                hintStyle: TextStyle(fontSize: 23),
                                hintText: 'Email'),
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                              color: Color.fromARGB(255, 238, 184, 249),
                            ),
                            margin: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 16.0),
                            child: TextField(
                              obscureText: true,
                              onChanged: (value) {
                                Username = value;
                              },
                              decoration: ktextFieldDecoration.copyWith(
                                  hintStyle: TextStyle(fontSize: 23),
                                  hintText: 'Username',
                                  contentPadding:
                                      EdgeInsets.fromLTRB(1, 0, 0, 0),
                                  icon: Icon(
                                    Icons.supervised_user_circle_outlined,
                                    color: Colors.purple,
                                    size: 32,
                                  )),
                            )),
                        Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                              color: Color.fromARGB(255, 238, 184, 249),
                            ),
                            margin: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 16.0),
                            child: TextField(
                              obscureText: true,
                              onChanged: (value) {
                                password = value;
                              },
                              decoration: ktextFieldDecoration.copyWith(
                                  hintStyle: TextStyle(fontSize: 23),
                                  hintText: 'Password',
                                  contentPadding:
                                      EdgeInsets.fromLTRB(1, 0, 0, 0),
                                  icon: Icon(
                                    Icons.lock_open,
                                    color: Colors.purple,
                                    size: 29,
                                  )),
                            )),
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
                                Navigator.pushNamed(context, Registrationsc.id);
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
