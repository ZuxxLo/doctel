// import 'package:doc_tel/homepage.dart';
import 'package:flutter/material.dart';
import './Drawer_Items.dart';
import 'Drawer_header.dart';
class drawer_widget extends StatefulWidget {
  @override
  State<drawer_widget> createState() => _drawer_widgetState();
}

class _drawer_widgetState extends State<drawer_widget>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final padding = EdgeInsets.symmetric(horizontal: 20);
    final String text1 = "Modifier Mes infos";
    final String text2 = "Se Deconnecter";
    final String text3 = "Mes notification";
    final String text4 = "À propos";
    

    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(245, 245, 245, 20)
      ),
      child: Drawer(
        child: Material(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: 
              [
                const drawer_header(),
                const SizedBox(
                  height: 15,//pading between items
                ),
                buildMenu(
                  text: text1,
                  icon: Icons.edit,
                ),
                const SizedBox(//pading between items
                  height: 15,
                ),
                buildMenu(
                  text: text3,
                  icon: Icons.notifications,
                  
                ),
                const SizedBox( //pading between items
                  height: 15,
                ),
                buildMenu(text: text2, icon: Icons.logout),
                const SizedBox(//pading between items
                  height: 15,
                ),
                TextButton( //button À propos 
                  onPressed: () {},
                  child: Text(text4),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
