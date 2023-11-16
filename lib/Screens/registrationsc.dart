import 'package:breathe_fresh/Screens/getStarted.dart';
import 'package:flutter/material.dart';
import 'package:breathe_fresh/Components/Constants.dart';
import 'package:breathe_fresh/Components/RoundedButton.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class Registrationsc extends StatefulWidget {
  static String id = 'registrationsc';
  const Registrationsc({super.key});

  @override
  State<Registrationsc> createState() => _RegistrationscState();
}

class _RegistrationscState extends State<Registrationsc> {
  late String email;
  late String password;
  late String Username;
  final _auth = FirebaseAuth.instance;
  bool showSpinner = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ModalProgressHUD(
          inAsyncCall: showSpinner,
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('Images/Pollutionlogin3.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 150.0,
                  ),
                  const Text(
                    'Create Your \nAccount',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Roboto',
                        fontSize: 42,
                        color: Colors.white70),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    '______________________________\n Join the community to \nBreathe Fresh!!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        wordSpacing: 1.0),
                  ),
                  const SizedBox(
                    height: 130.0,
                  ),
                  Container(
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
                          fit: FlexFit.tight,
                          child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                color: const Color.fromARGB(255, 238, 184, 249),
                              ),
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 16.0),
                              child: TextField(
                                onChanged: (value) {
                                  email = value;
                                },
                                decoration: ktextFieldDecoration.copyWith(
                                    hintStyle: const TextStyle(
                                      fontSize: 23,
                                      fontFamily: 'Roboto',
                                    ),
                                    hintText: 'Email',
                                    contentPadding:
                                        const EdgeInsets.fromLTRB(1, 0, 0, 0),
                                    icon: const Icon(
                                      Icons.supervised_user_circle_outlined,
                                      color: Colors.purple,
                                      size: 32,
                                    )),
                              )),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                color: const Color.fromARGB(255, 238, 184, 249),
                              ),
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 16.0),
                              child: TextField(
                                onChanged: (value) {
                                  Username = value;
                                },
                                decoration: ktextFieldDecoration.copyWith(
                                    hintStyle: const TextStyle(
                                      fontSize: 23,
                                      fontFamily: 'Roboto',
                                    ),
                                    hintText: 'Username',
                                    contentPadding:
                                        const EdgeInsets.fromLTRB(1, 0, 0, 0),
                                    icon: const Icon(
                                      Icons.supervised_user_circle_outlined,
                                      color: Colors.purple,
                                      size: 32,
                                    )),
                              )),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                color: const Color.fromARGB(255, 238, 184, 249),
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
                        Expanded(
                          child: RoundedButton(
                              title: 'Register',
                              color: Colors.purple,
                              onPessed: () async {
                                try {
                                  print(email);
                                  print(password);
                                  final newUser = await _auth
                                      .createUserWithEmailAndPassword(
                                          email: email,
                                          password:
                                              password); //we are using async is to be sure that we are create a proper authentication

                                  //if this user is authenticate dhten it ets saved and then it is sent chat screen
                                } //try
                                catch (e) {
                                  showErrorDialog(context, e.toString());
                                } //catch
                              }),
                        ),
                        Row(
                          children: <Widget>[
                            const SizedBox(
                              width: 100.0,
                            ),
                            const Text(
                              'forgot your password?',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black45),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const GetStarted()));
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void showErrorDialog(BuildContext context, String errorMessage) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Error'),
        content: Text(errorMessage),
        actions: <Widget>[
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('OK'),
          ),
        ],
      );
    },
  );
}

class testing {
  String getusr(String Username) {
    return Username;
  }
}
