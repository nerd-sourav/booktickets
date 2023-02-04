import 'package:flutter/material.dart';

// used to pass screen width and height to the program.
class Layout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }
}
