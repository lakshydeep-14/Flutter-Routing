// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_routing/generatedRouting/router/router.dart';

class NFouthScreen extends StatefulWidget {
  final String params;
  const NFouthScreen({Key? key, required this.params}) : super(key: key);

  @override
  State<NFouthScreen> createState() => _NFouthScreenState();
}

class _NFouthScreenState extends State<NFouthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text("FourthScreen    " + widget.params)),
          ElevatedButton(
              onPressed: () =>
                  NavigationRoutes().pushNamedAndRemoveUntil(context, '/'),
              child: Text("Pop")),
        ],
      ),
    );
  }
}
