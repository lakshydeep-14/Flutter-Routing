// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_routing/anonymousRouting/homePage.dart';
import 'package:flutter_routing/generatedRouting/router/router.dart';

class AFouthScreen extends StatefulWidget {
  final String params;
  const AFouthScreen({Key? key, required this.params}) : super(key: key);

  @override
  State<AFouthScreen> createState() => _AFouthScreenState();
}

class _AFouthScreenState extends State<AFouthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text("FourthScreen    " + widget.params)),
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
