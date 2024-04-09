/// home_services.dart
/// 
/// This file contains the implementation of the services section of the home screen of the Catcation app.

// Importing required packages
import 'package:flutter/material.dart';

/// A function that returns a widget representing the services section of the home screen.
/// 
/// This widget displays a grid of services related to cats, such as cat care, cat health,
/// cat shop, cat training, cat hotel, and cat groom. Each service is represented by a
/// container with an icon and a text label.
/// 
/// The [Container] widget is used to set the height of the services section to double.infinity,
/// which means the services section will take up all available vertical space.
/// 
/// The [GridView.count] widget is used to arrange the services in a grid.
/// The crossAxisCount property of the [GridView.count] widget is set to 3, which means there are 3 columns in the grid.
/// The physics property of the [GridView.count] widget is set to NeverScrollableScrollPhysics, which means the grid is not scrollable.
/// 
/// The [Align] widget is used to align the container for each service within the grid cell.
/// 
/// The [Container] widget is used to set the width and height of each service.
/// The width and height are set to MediaQuery.of(context).size.width * 0.2 if the width of the screen is greater than 300,
/// and 150 otherwise.

Widget showServices(BuildContext context){
  return Container(
    height: double.infinity,
    child: GridView.count(
      crossAxisCount: 3,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Align(
          child: Container(
            width: MediaQuery.of(context).size.width > 300 ? MediaQuery.of(context).size.width * 0.2 : 150,
            height: MediaQuery.of(context).size.width > 300 ? MediaQuery.of(context).size.width * 0.2 : 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(255, 122, 52, 1),
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.pets, size: 30, color: Colors.white),
                  Text(
                    'Cat Care',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Align(
          child: Container(
            width: MediaQuery.of(context).size.width > 300 ? MediaQuery.of(context).size.width * 0.2 : 150,
            height: MediaQuery.of(context).size.width > 300 ? MediaQuery.of(context).size.width * 0.2 : 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(255, 122, 52, 1),
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.medical_services, size: 30, color: Colors.white),
                  Text(
                    'Cat Health',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Align(
          child: Container(
            width: MediaQuery.of(context).size.width > 300 ? MediaQuery.of(context).size.width * 0.2 : 150,
            height: MediaQuery.of(context).size.width > 300 ? MediaQuery.of(context).size.width * 0.2 : 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(255, 122, 52, 1),
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.shopping_bag, size: 30, color: Colors.white),
                  Text(
                    'Cat Shop',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Align(
          child: Container(
            width: MediaQuery.of(context).size.width > 300 ? MediaQuery.of(context).size.width * 0.2 : 150,
            height: MediaQuery.of(context).size.width > 300 ? MediaQuery.of(context).size.width * 0.2 : 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(255, 122, 52, 1),
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.food_bank, size: 30, color: Colors.white),
                  Text(
                    'Cat Training',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Align(
          child: Container(
            width: MediaQuery.of(context).size.width > 300 ? MediaQuery.of(context).size.width * 0.2 : 150,
            height: MediaQuery.of(context).size.width > 300 ? MediaQuery.of(context).size.width * 0.2 : 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(255, 122, 52, 1),
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.hotel, size: 30, color: Colors.white),
                  Text(
                    'Cat Hotel',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Align(
          child: Container(
            width: MediaQuery.of(context).size.width > 300 ? MediaQuery.of(context).size.width * 0.2 : 150,
            height: MediaQuery.of(context).size.width > 300 ? MediaQuery.of(context).size.width * 0.2 : 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(255, 122, 52, 1),
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.shower, size: 30, color: Colors.white),
                  Text(
                    'Cat Groom',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]
    ),
  );
}