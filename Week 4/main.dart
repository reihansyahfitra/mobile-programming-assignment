import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: SafeArea(
          top: true,
          bottom: true,
          child: Scaffold(
            bottomNavigationBar: const TabBar(
              indicatorColor: Colors.amber,
              labelColor: Colors.amber,
              dividerColor: Colors.amber,
              tabs: [
                Tab(icon: Icon(Icons.home), text: "Home",),
                Tab(icon: Icon(Icons.email), text: "Email",),
                Tab(icon: Icon(Icons.person), text: "Profile")
              ],
            ),
            body: TabBarView(
              children: <Widget>[
                ListView(
                  children: <Widget>[
                    Center(
                      child: Container(
                        
                        width: double.infinity,
                        child: Center(
                          child: Text(
                            "Welcome home, Group 3!",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.white
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.amber),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.topLeft,
                            colors: [
                              Colors.amber,
                              Colors.yellowAccent
                            ]
                          )
                        ),
                      )
                    ),
                  ],
                ),
                Center(
                  child: Text(
                    "Disini akan ada banyak email",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  )
                ),
                Center(
                  child: Text("Group 3\n1. Reihan Syahfitra Wirawan\t1303210088\n2. Febry Ayu Dyah Ganevi\t1303213060\n3. Abdurrahman Dzaky\t1303210140\n4. Fadhillah Maulana\t1303210039"),
                )
              ],
            ),
          ),
        )
      )
    );
  }
}
