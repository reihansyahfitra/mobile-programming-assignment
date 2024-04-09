/// home_titlebar.dart
/// 
/// This file contains the implementation of the title bar for the home screen of the Catcation app.

// Importing required packages
import 'package:flutter/material.dart';

/// The title bar widget for the home screen.
///
/// This widget displays the title and actions for the home screen app bar.
/// It includes an app icon, app title, and a user profile button.
/// 
/// The [AppBar] widget is used to create the title bar.
/// 
/// The elevation property of the [AppBar] is set to 5, which gives the title bar a shadow.
/// 
/// The shadowColor property of the [AppBar] is set to Colors.black, which makes the shadow black.
/// 
/// The backgroundColor property of the [AppBar] is set to Color.fromRGBO(255, 122, 52, 1), which sets the background color of the title bar.
/// 
/// The title property of the [AppBar] is set to a [RichText] widget that displays the app icon and the app title.
/// 
/// The [RichText] widget uses a [TextSpan] to combine the app icon and the app title.
/// 
/// The app icon is displayed using a [WidgetSpan] that contains an [Icon] widget.
/// 
/// The app title is displayed using a [TextSpan] that contains the string 'CatCation.'.
/// The style of the [TextSpan] is set to a [TextStyle] with a font size of 20 and a font weight of FontWeight.bold.
Widget homeTitleBar = AppBar(
  elevation: 5,
  shadowColor: Colors.black,
  backgroundColor: Color.fromRGBO(255, 122, 52, 1),
  title: RichText(
    text: TextSpan(
      children: [
        WidgetSpan(
          child: Icon(Icons.pets, size: 30, color: Colors.white),
        ),
        TextSpan(
          text: 'CatCation.',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        ),
      ],
    ), 
  ),
  actions: <Widget>[
    TextButton(
      child: RichText(
        text: TextSpan(
          children: <InlineSpan>[
            TextSpan(
              text: 'Agus',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: Container(
                margin: EdgeInsets.only(left: 5),
                child: Icon(Icons.account_circle, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      onPressed: () {},
    ),
  ],
);