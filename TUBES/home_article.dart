/// home_article.dart
/// 
/// This file contains the implementation of the articles section of the home screen of the Catcation app.

// Importing required packages
import 'package:flutter/material.dart';

/// A function that returns a widget representing the articles section of the home screen.
/// 
/// This widget displays a vertical list of articles related to cats. Each article is represented by a card
/// that contains an image, a title, and a description.
/// 
/// The [Column] widget is used to arrange the articles in a vertical list.
/// 
/// The [Container] widget is used to add a margin around each card. The margin is set to 20 on the left, right, and top.
/// 
/// The [Card] widget is used to display each article. The shape property of the [Card] widget is set to a [RoundedRectangleBorder]
/// with a borderRadius of 20, which gives the card rounded corners.
/// 
/// The [Column] widget is used to arrange the image, title, and description of each article in a vertical list within the card.
/// 
/// The [Image.asset] widget is used to display the image of each article. The fit property of the [Image.asset] widget is set to BoxFit.contain,
/// which means the image will be as large as possible within the card while still maintaining its aspect ratio.
Widget showArticles(BuildContext context){
  return Column(
    children: <Widget>[
      Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: <Widget>[
              Image.asset(
                'assets/images/ContentImage.png',
                fit: BoxFit.contain,
                width: double.infinity,
                height: 200,
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'How to Take Care of Your Cat',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: <Widget>[
              Image.asset(
                'assets/images/ContentImage.png',
                fit: BoxFit.contain,
                width: double.infinity,
                height: 200,
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'How to Take Care of Your Cat',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: <Widget>[
              Image.asset(
                'assets/images/ContentImage.png',
                fit: BoxFit.contain,
                width: double.infinity,
                height: 200,
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'How to Take Care of Your Cat',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}