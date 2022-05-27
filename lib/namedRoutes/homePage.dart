// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_routing/generatedRouting/router/router.dart';

class NamedHomePage extends StatefulWidget {
  const NamedHomePage({Key? key}) : super(key: key);

  @override
  State<NamedHomePage> createState() => _NamedHomePageState();
}

class _NamedHomePageState extends State<NamedHomePage> {
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
          Center(child: Text("NamedHomePage")),
          ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/first'),
              child: Text("First")),
          ElevatedButton(
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, '/second'),
              child: Text("Second")),
          ElevatedButton(
              onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context, '/third', (Route<dynamic> route) => false),
              child: Text("Third")),
          ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/fourth',
                  arguments: "Lakshydeep"),
              child: Text("Fourth")),
        ],
      ),
    );
  }
}
