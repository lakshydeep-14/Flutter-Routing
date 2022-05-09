// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../router/router.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text("ThirdScreen")),
          ElevatedButton(
              onPressed: () => NavigationRoutes()
                  .pushNamedAndRemoveUntil(context, Routes.home),
              child: Text("Pop")),
        ],
      ),
    );
  }
}
