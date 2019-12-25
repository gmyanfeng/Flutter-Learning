import 'package:flutter/material.dart';
import 'string.dart';
import 'ghflutter.dart';

void main() => runApp(GHFlutterApp());

class GHFlutterApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appTitle,
      theme: ThemeData(
        primaryColor: Colors.green.shade800
      ),
      home: GHFlutter()
    );
  }
}




