import 'dart:async';
import 'package:emergency_nav_lights_sim/page/home-page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  SplashPageState createState() {
    return SplashPageState();
  }
}

class SplashPageState extends State<SplashPage> {
  startTime() async {
    return new Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => HomePage()),
      );
    });
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text("EMERGENCY\nNAV LIGHTS\nSIMULATOR",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 32.0, fontFamily: "AzoSansUber")),
            ),
            Container(
                child: Image.asset("assets/images/boat.png")),
          ],
        ),
      ),
    );
  }
}
