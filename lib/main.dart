import 'package:flutter/material.dart';
import 'package:portfolio_naman/appbar.dart';
import 'package:portfolio_naman/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static final String title = "Naman's Portfolio";

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavBar(),
    );
  }
}
