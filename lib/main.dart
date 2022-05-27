// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_routing/anonymousRouting/homePage.dart';
import 'package:flutter_routing/generatedRouting/homepage.dart';
import 'package:flutter_routing/namedRoutes/fourthScreen.dart';
import 'package:flutter_routing/namedRoutes/homePage.dart';

import 'generatedRouting/router/router_handler.dart';
import 'namedRoutes/firstScreen.dart';
import 'namedRoutes/secondScreen.dart';
import 'namedRoutes/thirdScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //NamedRoute
      routes: {
        '/': (context) => NamedHomePage(),
        '/first': (context) => NFirstScreen(),
        '/second': (context) => NSecondScreen(),
        '/third': (context) => NThirdScreen(),
        '/fourth': (context) => NFouthScreen(params: "params")
      },
      //generatedRouting
      //onGenerateRoute: generateRoute,
      // home:
      //     //anonymousRouting
      //     //const AHomePage()
      //     //NamedRoutes
      //     const NamedHomePage()
      //GeneratedRoutes
      // const GeneratedHomePage(),
    );
  }
}
