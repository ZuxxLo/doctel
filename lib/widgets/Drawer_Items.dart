import 'package:flutter/material.dart';

Widget buildMenu({
  required String text,
  required IconData icon,
}) {
  const color = Colors.black;
  const hoverColor = Colors.red;
  onTap: () {};
  return ListTile(
    leading: Icon(icon, color: color),
    title: Text(
      text,
      style: const TextStyle(color: color),
    ),
    
  );
}
