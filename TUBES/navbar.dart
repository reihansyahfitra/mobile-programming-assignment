import 'package:catcation/home.dart';
import 'package:catcation/home_titlebar.dart';
import 'package:flutter/material.dart';

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