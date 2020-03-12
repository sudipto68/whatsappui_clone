import 'package:flutter/material.dart';
import 'package:whatsapp_clone/home_screen.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Color(0xff075E54),
      accentColor:Color(0xff25D366),
    ),
    home: HomeScreen(),
  ),
);

