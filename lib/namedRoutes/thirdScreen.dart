// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_routing/generatedRouting/router/router.dart';

class NThirdScreen extends StatefulWidget {
  const NThirdScreen({Key? key}) : super(key: key);

  @override
  State<NThirdScreen> createState() => _NThirdScreenState();
}

class _NThirdScreenState extends State<NThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text("NThirdScreen")),
          ElevatedButton(
              onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context, '/', (Route<dynamic> route) => false),
              child: Text("Pop")),
        ],
      ),
    );
  }
}
