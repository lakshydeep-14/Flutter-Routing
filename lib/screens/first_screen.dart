// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_routing/router/router.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text('FirstScreen')),
          ElevatedButton(
              onPressed: () => NavigationRoutes().pop(context),
              child: Text('Pop')),
        ],
      ),
    );
  }
}
