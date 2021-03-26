import 'dart:async';
import 'package:flutter/material.dart';
import 'package:car_loan/utils/strings.dart' as strings;

class LaunchScreen extends StatefulWidget {
  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  _loading(int seconds) {
    Timer(Duration(seconds: seconds), nextPage);
  }

  void nextPage() {
    Navigator.pushReplacementNamed(context, strings.chooseLanguage_route);
  }

  @override
  void initState() {
    _loading(3);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(height: 36.0, child: Image.asset(strings.logo_dark)),
            SizedBox(
              height: 20.0,
            ),
            Container(height: 40.0, child: Image.asset(strings.loader)),
          ],
        ),
      ),
    );
  }
}
