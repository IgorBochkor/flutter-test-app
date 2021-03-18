import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_app/main.dart';

void main() {
  test("Testing MyApp text name", () {
    expect(CustomColorState().getTextName(), 'Hey there');
  });

  test("Testing AppBar text name", () {
    expect(MyApp().getAppBarName(), 'FlutterDev.com');
  });

  test("Testing font size", () {
    expect(CustomColorState().getFontSize(), 30.0);
  });

  test("Testing font size color", () {
    expect(CustomColorState().getFontColor(), Colors.white);
  });
}
