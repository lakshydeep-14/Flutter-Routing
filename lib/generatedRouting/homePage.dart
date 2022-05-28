// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_routing/generatedRouting/router/router.dart';

class GeneratedHomePage extends StatefulWidget {
  const GeneratedHomePage({Key? key}) : super(key: key);

  @override
  State<GeneratedHomePage> createState() => _GeneratedHomePageState();
}

class _GeneratedHomePageState extends State<GeneratedHomePage> {
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
          Center(child: Text("GeneratedHomePage")),
          ElevatedButton(
              onPressed: () => NavigationRoutes().push(context, Routes.first),
              child: Text("First")),
          ElevatedButton(
              onPressed: () =>
                  NavigationRoutes().pushReplacement(context, Routes.second),
              child: Text("Second")),
          ElevatedButton(
              onPressed: () => NavigationRoutes()
                  .pushNamedAndRemoveUntil(context, Routes.third),
              child: Text("Third")),
          ElevatedButton(
              onPressed: () => NavigationRoutes()
                  .push(context, Routes.fourth, arguments: "Lakshydeep Vikram"),
              child: Text("Fourth")),
        ],
      ),
    );
  }
}
