// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'extension.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return
        //     // anonymousRouting
        MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AHomePage(),
    );

    //     //Named Routes
    //     MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   routes: {
    //     '/': (context) => NamedHomePage(),
    //     '/first': (context) => NFirstScreen(),
    //     '/second': (context) => NSecondScreen(),
    //     '/third': (context) => NThirdScreen(),
    //     '/fourth': (context) => NFouthScreen(params: "Lakshydeep VIkram"),
    //   },
    // );

    //     //generatedRouting
    //     MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   onGenerateRoute: generateRoute,
    //   home: const GeneratedHomePage(),
    // );
  }
}
