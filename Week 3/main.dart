import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        body: LayoutBuilder(
          builder:(context, constraints) => 
          Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Material(color: Colors.white,),
              Positioned(
                top:30,
                right:10,
                child: Icon(Icons.circle, size: 50, color: Colors.red,)
              ),
              Positioned(
                top:30,
                left: 10,
                child: Text('Welcome,', style: TextStyle(
                  fontSize: 30, 
                  color: Colors.blue,
                  fontWeight: FontWeight.bold
                  ),
                )
              ),
              Positioned(
                top:65,
                left: 10,
                child: Text('Kelompok 2', style: TextStyle(
                  fontSize: 15,
                  ),
                )
              ),
              Center(
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.blue, Colors.lightBlueAccent],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                )
              ),
              Center(
                child: Text('1303210088 - Reihan Syahfitra Wirawan\n1303213060 - Febry Ayu Dyah Ganevi\n1303210039 - Fadhillah Maulana\n1303210140 - Abdurrahman Dzaky', style: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                  ),
                )
              )
            ]
          ),
        )
      ),
    );
  }
}
