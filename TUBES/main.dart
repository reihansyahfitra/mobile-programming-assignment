/// main.dart
/// 
/// This is the entry point of the Flutter application.

// Importing required packages
import 'package:catcation/navbar.dart';
import 'package:flutter/material.dart';

/// The main function that is executed when the application starts.
/// It calls the runApp function from Flutter, and passes in an instance of MainApp.
void main() {
  runApp(const MainApp());
}

/// MainApp is a StatelessWidget that builds the main widget of the application.
/// It returns a MaterialApp widget, which provides many material design features.
/// The home of the MaterialApp is set to the widget returned by the showNavbar function.
class MainApp extends StatelessWidget {
  // Constructor for MainApp. It calls the constructor of the superclass (StatelessWidget) with the key parameter.
  const MainApp({Key? key}) : super(key: key);

  // The build method describes the part of the user interface represented by this widget.
  // It returns a MaterialApp with its home set to the widget returned by the showNavbar function.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: showNavbar(context),
    );
  }
}