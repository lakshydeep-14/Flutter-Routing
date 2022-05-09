// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_routing/router/router.dart';

class FouthScreen extends StatefulWidget {
  final String params;
  const FouthScreen({Key? key, required this.params}) : super(key: key);

  @override
  State<FouthScreen> createState() => _FouthScreenState();
}

class _FouthScreenState extends State<FouthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text("FourthScreen    " + widget.params)),
          ElevatedButton(
              onPressed: () => NavigationRoutes()
                  .pushNamedAndRemoveUntil(context, Routes.home),
              child: Text("Pop")),
        ],
      ),
    );
  }
}
