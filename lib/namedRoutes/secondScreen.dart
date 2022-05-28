// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_routing/generatedRouting/router/router.dart';

class NSecondScreen extends StatefulWidget {
  const NSecondScreen({Key? key}) : super(key: key);

  @override
  State<NSecondScreen> createState() => _NSecondScreenState();
}

class _NSecondScreenState extends State<NSecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text("NSecondScreen")),
          ElevatedButton(
              onPressed: () => Navigator.pushReplacementNamed(context, '/'),
              child: Text("Pop")),
        ],
      ),
    );
  }
}
