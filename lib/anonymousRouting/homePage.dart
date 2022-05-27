// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_routing/anonymousRouting/firstScreen.dart';
import 'package:flutter_routing/anonymousRouting/fourthScreen.dart';
import 'package:flutter_routing/anonymousRouting/secondScreen.dart';
import 'package:flutter_routing/anonymousRouting/thirdScreen.dart';

class AHomePage extends StatefulWidget {
  const AHomePage({Key? key}) : super(key: key);

  @override
  State<AHomePage> createState() => _AHomePageState();
}

class _AHomePageState extends State<AHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Routing"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text("AHomePage")),
          ElevatedButton(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => AFirstScreen())),
              child: Text("First")),
          ElevatedButton(
              onPressed: () => Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => ASecondScreen())),
              child: Text("Second")),
          ElevatedButton(
              onPressed: () => Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => AThirdScreen()),
                  (Route<dynamic> route) => false),
              child: Text("Third")),
          ElevatedButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => AFouthScreen(
                            params: "Lakshydeep",
                          ))),
              child: Text("Fourth")),
        ],
      ),
    );
  }
}
