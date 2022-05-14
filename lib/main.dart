import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:hexcolor/hexcolor.dart';
import 'Page/SplashScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
  runApp(const LoginDoctell());
}

class LoginDoctell extends StatelessWidget {
  const LoginDoctell({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Color _PrimaryColor = HexColor("#397EF5");
    Color _accentColor = Colors.lightBlueAccent;
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Logout Page',
      theme: ThemeData(
        primaryColor: _PrimaryColor,
        scaffoldBackgroundColor: Colors.grey.shade100, 
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: _accentColor),
        primarySwatch: Colors.grey,
      ),
      home: HomePgae()//const SplashScreen(title: 'Doctell Login Page'),
    );
  }
}


