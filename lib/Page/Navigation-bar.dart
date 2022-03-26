// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'widget_header.dart';

class buttomNavBar extends StatefulWidget {
  const buttomNavBar({Key? key}) : super(key: key);

  @override
  State<buttomNavBar> createState() => _buttomNavBarState();
}

class _buttomNavBarState extends State<buttomNavBar>
    with SingleTickerProviderStateMixin {
  int selectedIndex = 0;
  List<IconData> data = [
    Icons.home,
    Icons.person,
    Icons.list_rounded,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : SingleChildScrollView(
      child: Column(children: [
        Container(
            height: 200,
            child: HeaderWidget(200,false,Icons.notification_add
            ),
          ),
      ]),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: Material(
          elevation: 10,
          borderRadius: BorderRadius.circular(40),
          color: Colors.white,
          child: SizedBox(
              height: 50,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data.length,
                padding: const EdgeInsets.symmetric(horizontal: 30),
                itemBuilder: (ctx, i) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = i;
                      });
                    }, //on Tap 
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 250),
                      width: 40,
                      child: Icon(
                        data[i],
                        color: i == selectedIndex ? Colors.blue : Colors.grey,
                        size: 35,
                      ),
                    ),
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
