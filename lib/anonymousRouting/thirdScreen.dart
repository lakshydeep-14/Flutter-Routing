// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_routing/anonymousRouting/homePage.dart';

class AThirdScreen extends StatefulWidget {
  const AThirdScreen({Key? key}) : super(key: key);

  @override
  State<AThirdScreen> createState() => _AThirdScreenState();
}

class _AThirdScreenState extends State<AThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text("AThirdScreen")),
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
