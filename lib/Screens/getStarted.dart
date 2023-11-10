import 'package:breathe_fresh/Components/RoundedButton.dart';
import 'package:flutter/material.dart';
import 'homeScreen.dart';
import 'package:breathe_fresh/Components/Constants.dart';
import 'registrationsc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

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
  bool showSpinner = false;

  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ModalProgressHUD(
          inAsyncCall: showSpinner,
          child: Container(
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
                  const SizedBox(
                    height: 150.0,
                  ),
                  const Text(
                    'Login To Your\nAccount',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        fontSize: 42,
                        color: Colors.white70),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    '____________________________\n \n Welcome Back Peep!!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        wordSpacing: 1.0),
                  ),
                  const SizedBox(
                    height: 130.0,
                  ),
                  Flexible(
                    flex: 2,
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
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 6,
                            width: 175,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(27),
                              color: const Color(0xffd9d9d9),
                            ),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          Flexible(
                            flex: 1,
                            fit: FlexFit.loose,
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                color: const Color.fromARGB(255, 238, 184, 249),
                              ),
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 16.0),
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                onChanged: (value) {
                                  email = value;
                                },
                                decoration: ktextFieldDecoration.copyWith(
                                    contentPadding:
                                        const EdgeInsets.fromLTRB(1, 0, 0, 0),
                                    icon: const Icon(
                                      Icons.email,
                                      color: Colors.purple,
                                      size: 32,
                                    ),
                                    border: InputBorder.none,
                                    hintStyle: const TextStyle(
                                      fontSize: 23,
                                      fontFamily: 'Roboto',
                                    ),
                                    hintText: 'Email'),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            fit: FlexFit.loose,
                            child: Container(
                                height: 60,
                                width: 400,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35),
                                  color:
                                      const Color.fromARGB(255, 238, 184, 249),
                                ),
                                margin: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 16.0),
                                child: TextField(
                                  obscureText: true,
                                  onChanged: (value) {
                                    password = value;
                                  },
                                  decoration: ktextFieldDecoration.copyWith(
                                      hintStyle: const TextStyle(
                                        fontSize: 23,
                                        fontFamily: 'Roboto',
                                      ),
                                      hintText: 'Password',
                                      contentPadding:
                                          const EdgeInsets.fromLTRB(1, 0, 0, 0),
                                      icon: const Icon(
                                        Icons.lock_open,
                                        color: Colors.purple,
                                        size: 29,
                                      )),
                                )),
                          ),
                          Flexible(
                            flex: 1,
                            child: RoundedButton(
                                title: 'LOG IN',
                                color: Colors.purple,
                                onPessed: () async {
                                  setState(() {
                                    showSpinner = true;
                                  });
                                  try {
                                    final User =
                                        _auth.signInWithEmailAndPassword(
                                            email: email, password: password);
                                    print("passed");
                                    Navigator.pushReplacementNamed(
                                        context, HomeScreen.id);
                                    setState(() {
                                      showSpinner = false;
                                    });
                                  } catch (e) {
                                    print(e);
                                  }
                                }),
                          ),
                          Row(
                            children: <Widget>[
                              const SizedBox(
                                width: 90,
                              ),
                              const Text(
                                'Dont have an account?',
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black45),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, Registrationsc.id);
                                },
                                child: const Text(
                                  'click here',
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
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
      ),
    );
  }
}
