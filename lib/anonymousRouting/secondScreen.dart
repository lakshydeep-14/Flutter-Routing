// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_routing/anonymousRouting/homePage.dart';

class ASecondScreen extends StatefulWidget {
  const ASecondScreen({Key? key}) : super(key: key);

  @override
  State<ASecondScreen> createState() => _ASecondScreenState();
}

class _ASecondScreenState extends State<ASecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text("ASecondScreen")),
          ElevatedButton(
              onPressed: () => Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => AHomePage()),
                  (route) => false),
              child: Text("Pop")),
        ],
      ),
    );
  }
}
