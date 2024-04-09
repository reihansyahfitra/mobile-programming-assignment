/// home_recommendation.dart
/// 
/// This file contains the implementation of the recommendations section of the home screen of the Catcation app.

// Importing required packages
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// A function that returns a widget representing the recommendations section of the home screen.
/// 
/// This widget displays a horizontal list of recommended cat food items. Each item includes an image, product name, and price.
/// 
/// The [SizedBox] widget is used to set the height of the recommendations section to 350 and the width to double.infinity,
/// which means the recommendations section will take up all available horizontal space.
/// 
/// The [ListView.builder] widget is used to create the list of recommended items.
/// The scrollDirection property of the [ListView.builder] widget is set to Axis.horizontal, which means the list scrolls horizontally.
/// The itemCount property of the [ListView.builder] widget is set to 20, which means there are 20 items in the list.
/// 
/// The itemBuilder property of the [ListView.builder] widget is set to a function that returns a widget for each item in the list.
/// The widget for each item is a [Container] that contains an [ElevatedButton].
/// 
/// The [Container] widget is used to set the height and width of each item, and to add padding around the [ElevatedButton].
/// 
/// The [ElevatedButton] widget is used to make each item clickable.
/// The onPressed property of the [ElevatedButton] is set to an empty function, which means nothing happens when the item is clicked.
Widget showRecommendation(BuildContext context){
  return SizedBox(
    height: 350,
    width: double.infinity,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 20,
      itemBuilder: (context, index) {
        int _price = 50000*(index+1);
        return Align(
          child: Container(
            height: 300,
            width: 250,
            padding: EdgeInsets.only(left: 25, right: 25, top: 20),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/images/CatFoodExample.png',
                    fit: BoxFit.contain,
                    width: 150,
                    height: 150,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.all(5),
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Whiskas Ocean Fish Adult Dry Cat Food',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          //apply currency formatting
                          'Rp ${NumberFormat("#,##0", "en_US").format(_price)}',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    ),
  );
}