/// home.dart
/// 
/// This file contains the implementation of the home screen of the Catcation app.

// Importing required packages
import 'package:catcation/home_article.dart';
import 'package:catcation/home_recommendation.dart';
import 'package:catcation/home_services.dart';
import 'package:flutter/material.dart';

/// A function that returns a widget representing the home screen of the Catcation app.
/// 
/// This widget displays various sections including a greeting card, services,
/// recommended items for the user's cat, and articles related to cats.
/// 
/// The [SingleChildScrollView] widget is used to make the home screen scrollable.
/// 
/// The [Container] widget is used to set the background color of the home screen to Color.fromRGBO(255, 122, 52, 1).
/// 
/// The [ListView] widget is used to arrange the sections of the home screen in a vertical list.
/// 
/// The greeting card is implemented as a [Card] widget that contains a [Row] widget.
/// The [Row] widget contains a [Column] widget that displays a greeting message and a button,
/// and an [Image] widget that displays an image of a cat.
/// 
/// The services section is displayed by calling the showServices function from the home_services.dart file.
/// 
/// The recommended items section is displayed by calling the showRecommendation function from the home_recommendation.dart file.
/// 
/// The articles section is displayed by calling the showArticles function from the home_article.dart file.
Widget showHome(BuildContext context) {
  return SingleChildScrollView(
    child: Container(
      color: Color.fromRGBO(255, 122, 52, 1),
      height: MediaQuery.of(context).size.height,
      child: ListView(
        children: <Widget>[
          Container(
            height: 170,
            child: Card(
              margin: EdgeInsets.only(left: 30, right: 30, top: 20),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: FittedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Hi, Agus! Your cat is in daycare.',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 30),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(255, 122, 52, 1),
                            ),
                            onPressed: () {
                              // TODO: Implement check condition functionality
                            },
                            child: Text(
                              'Check Condition',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Image.asset(
                      'assets/images/Kucing1Home.png',
                      fit: BoxFit.contain,
                      width: 100,
                      height: 100,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 25),
            height: (MediaQuery.of(context).size.width > 300
                    ? MediaQuery.of(context).size.width - 100
                    : 400)
                .roundToDouble(),
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 247, 232, 1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
            child: showServices(context),
          ),
          Container(
            height: 400,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 247, 232, 1),
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.zero,
                  child: Text(
                    'Recommended for your cat!',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(255, 122, 52, 1),
                    ),
                  ),
                ),
                showRecommendation(context),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 247, 232, 1),
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.zero,
                  child: Text(
                    'Articles for you!',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(255, 122, 52, 1),
                    ),
                  ),
                ),
                showArticles(context),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}