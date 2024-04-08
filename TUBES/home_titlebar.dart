import 'package:flutter/material.dart';



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