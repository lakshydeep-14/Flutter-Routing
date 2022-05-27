// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_routing/generatedRouting/router/router.dart';

class NFirstScreen extends StatefulWidget {
  const NFirstScreen({Key? key}) : super(key: key);

  @override
  State<NFirstScreen> createState() => _NFirstScreenState();
}

class _NFirstScreenState extends State<NFirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text("NFirstScreen")),
          ElevatedButton(
              onPressed: () => Navigator.pop(context), child: Text("Pop")),
        ],
      ),
    );
  }
}
