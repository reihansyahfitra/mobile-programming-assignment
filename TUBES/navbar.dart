// Importing required packages
import 'package:catcation/home.dart';
import 'package:catcation/home_titlebar.dart';
import 'package:flutter/material.dart';

/// A function that returns a widget representing the navigation bar of the app.
/// It displays a bottom navigation bar with tabs for different sections of the app.
/// Each tab contains an icon and a label.
/// The selected tab's label is displayed in white, while the unselected tabs' labels are displayed in white.
/// The background color of the navigation bar is set to Color.fromRGBO(255, 122, 52, 1).
/// The navigation bar is implemented using a [TabBar] and a [TabBarView].
/// 
/// The [DefaultTabController] widget is used to manage the selected tab and the animation that occurs when the selected tab changes.
/// The length of the [DefaultTabController] is set to 5, which means there are 5 tabs in the navigation bar.
/// 
/// The [SafeArea] widget is used to ensure that the navigation bar is displayed within the safe area of the screen.
/// The top and bottom properties of the [SafeArea] widget are set to true, which means the safe area includes the top and bottom edges of the screen.
/// 
/// The [Scaffold] widget provides a framework in which to arrange other widgets, such as the navigation bar.
/// The background color of the [Scaffold] is set to Color.fromRGBO(255, 122, 52, 1).
Widget showNavbar(BuildContext context){
  return DefaultTabController(
    length: 5,
    child: SafeArea(
      top: true,
      bottom: true,
      child: Scaffold(
        backgroundColor: Color.fromRGBO(255, 122, 52, 1),
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: TabBar(
          splashFactory: NoSplash.splashFactory,
          padding: EdgeInsets.only(top: 10),
          overlayColor: MaterialStateProperty.resolveWith<Color>((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.white.withOpacity(0.2);
            }
            return Colors.transparent;
          }),
          indicatorColor: Color.fromRGBO(255, 122, 52, 1),
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white,
          splashBorderRadius: BorderRadius.circular(90),
          tabs: <Widget>[
            Tab(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.home),
                  Text(
                    'Home',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Tab(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.notifications),
                  Text(
                    'Inbox',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Tab(
              child: OverflowBox(
                maxHeight: 85,
                maxWidth: 85,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  padding: EdgeInsets.zero,
                  margin: EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.pets, color: Color.fromRGBO(255, 122, 52, 1)),
                      Text(
                        'Condition',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(255, 122, 52, 1),
                          fontSize: 10,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Tab(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.shopping_cart),
                  Text(
                    'Cart',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Tab(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.account_balance_wallet),
                  Text(
                    'History',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        body: TabBarView(
          children: <Widget>[
            Scaffold(
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(kToolbarHeight),
                child: homeTitleBar,
              ),
              body: showHome(context),
            ),
            Center(child: Text('Notifications')),
            Center(child: Text('Cats')),
            Center(child: Text('Cart')),
            Center(child: Text('Transactions')),
          ],
        ),
      ),
    ),
  );
}