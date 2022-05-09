// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_routing/router/router.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          Center(child: Text("HomePage")),
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
                  .push(context, Routes.fourth, arguments: "Lakshydeep"),
              child: Text("Fourth")),
        ],
      ),
    );
  }
}
