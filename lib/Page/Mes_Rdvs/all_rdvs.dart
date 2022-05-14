import 'package:flutter/material.dart';
import 'all_mes_rdvs.dart';
import 'constants.dart';

class AllMesrdv extends StatelessWidget {
  const AllMesrdv({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: rdvAppBar(),
      backgroundColor: bcgcolor,
      body: const BodyAllMesRdvs(),
    );
  }

  AppBar rdvAppBar() {
    return AppBar(
      backgroundColor: bcgcolor,
      leading: const BackButton(color: Colors.black),
      centerTitle: true,
      title: const Text(
        "Appointments History",
        style: TextStyle(color: Colors.black),

      ),
      elevation: 0,
    );
  }
}
