import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:hexcolor/hexcolor.dart';
import 'Page/Docter_Profil/profil_page.dart';
import 'Page/SplashScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseFirestore.instance
      .collection('patients')
      .doc('43vju27PaOZptGuNQvDC')
      .collection('ClickDoc')
      .doc('yzreO3TrzblximKsxdz2')
      .get()
      .then(
    (value) {
      timeleft = value['timeleft'];
    },
  );
  Timer(Duration(seconds: timeleft - Timestamp.fromDate(DateTime.now()).seconds>0 ? timeleft - Timestamp.fromDate(DateTime.now()).seconds : 2), () async {
    await FirebaseFirestore.instance
        .collection('patients')
        .doc('43vju27PaOZptGuNQvDC') //the doctor clicked uid
        .collection('ClickDoc')
        .doc('yzreO3TrzblximKsxdz2')
        .update({'onceADay': false, 'timeleft': 0});
  });

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
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: _accentColor),
          primarySwatch: Colors.grey,
        ),
        home: HomePgae() //const SplashScreen(title: 'Doctell Login Page'),
        );
  }
}
