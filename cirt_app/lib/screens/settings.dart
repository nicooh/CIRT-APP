import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backwardsCompatibility: false,
        //brightness: Brightness.dark,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Settings11',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Text('Settings'),
      ),
    );
  }
}
