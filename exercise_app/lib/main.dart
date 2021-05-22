import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: "Cairo",
          scaffoldBackgroundColor: kBackgroundColor,
          textTheme:
              Theme.of(context).textTheme.apply(displayColor: kTextColor)),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
              height: size.height * .45,
              decoration: BoxDecoration(
                  color: Color(0xFFF5CeB8),
                  image: DecorationImage(
                      alignment: Alignment.centerLeft,
                      image: AssetImage(
                          "assets/images/undraw_pilates_gpdb.png")))),
          SafeArea(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 52,
                    width: 52,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Color(0xFFF2BEA1), shape: BoxShape.circle),
                    child: SvgPicture.asset("assets/icons/menu.svg"),
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
