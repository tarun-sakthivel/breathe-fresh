import 'package:breathe_fresh/Screens/OutdoorScreen.dart';
import 'package:breathe_fresh/Screens/getStarted.dart';
import 'package:flutter/material.dart';
import 'Screens/welcome_screen.dart';
import 'Screens/homeScreen.dart';
import 'Screens/IndoorScreen.dart';
import 'Screens/OutdoorScreen.dart';
import 'Screens/Moderate.dart';
import 'Screens/Unhealthy.dart';
import 'Screens/Hazardous.dart';
import 'Screens/registrationsc.dart';

void main() {
  runApp(const breathe_fresh());
}

class breathe_fresh extends StatelessWidget {
  const breathe_fresh({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        GetStarted.id: (context) => const GetStarted(),
        HomeScreen.id: (context) => const HomeScreen(),
        IndoorScreen.id: (context) => const IndoorScreen(),
        OutdoorScreen.id: (context) => const OutdoorScreen(),
        Moderate.id: (context) => const Moderate(),
        Unhealthy.id: (context) => const Unhealthy(),
        Hazrdous.id: (context) => const Hazrdous(),
        Registrationsc.id: (context) => const Registrationsc()
      },
    );
  }
}
