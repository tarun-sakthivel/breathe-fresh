import 'package:breathe_fresh/Screens/OutdoorScreen.dart';
import 'package:breathe_fresh/Screens/getStarted.dart';
import 'package:breathe_fresh/Screens/gettips.dart';
import 'package:flutter/material.dart';
import 'Screens/welcome_screen.dart';
import 'Screens/homeScreen.dart';
import 'Screens/IndoorScreen.dart';
import 'Screens/Moderate.dart';
import 'Screens/Unhealthy.dart';
import 'Screens/Hazardous.dart';
import 'Screens/registrationsc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart'; //this package is used to keep the app in potrait mode
import 'package:awesome_notifications/awesome_notifications.dart';

void main() async {
  AwesomeNotifications().initialize(
      null,
      [
        NotificationChannel(
            channelKey: 'lpg_gas_alert',
            channelName: 'Breathe Fresh',
            channelDescription: 'Notification for the leak of lpg gas')
      ],
      debug: true);
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const breathe_fresh());
}

class breathe_fresh extends StatelessWidget {
  const breathe_fresh({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        Registrationsc.id: (context) => const Registrationsc(),
        gettips.id: (context) => const gettips(),
      },
    );
  }
}
