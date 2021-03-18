import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  getAppBarName() {
    return 'FlutterDev.com';
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: CustomColor()),
        appBar: AppBar(
          title: Text(getAppBarName()),
          backgroundColor: Colors.deepOrangeAccent[100],
        ),
        backgroundColor: Colors.purple[200],
      ),
    );
  }
}

class CustomColor extends StatefulWidget {
  @override
  CustomColorState createState() => CustomColorState();
}

class CustomColorState extends State<CustomColor> {
  Color color;

  getTextName() {
    return 'Hey there';
  }

  getFontSize() {
    return 30.0;
  }

  getFontColor() {
    return Colors.white;
  }

  getRandomColor() {
    return Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
        .withOpacity(1.0);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: ListTile(
        title: Center(
            child: Text(
          getTextName(),
          style: TextStyle(fontSize: getFontSize(), color: getFontColor()),
        )),
        onTap: () {
          setState(() {
            color = getRandomColor();
          });
        },
      ),
    );
  }
}
