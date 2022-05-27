// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_routing/generatedRouting/router/router.dart';

class AFirstScreen extends StatefulWidget {
  const AFirstScreen({Key? key}) : super(key: key);

  @override
  State<AFirstScreen> createState() => _AFirstScreenState();
}

class _AFirstScreenState extends State<AFirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text("AFirstScreen")),
          ElevatedButton(
              onPressed: () => Navigator.pop(context), child: Text("Pop")),
        ],
      ),
    );
  }
}
