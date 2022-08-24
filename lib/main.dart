import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  int Dice = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amber[600],
        appBar: AppBar(
          title: Text('Dice'),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.amber[600],
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('images/$Dice.png'),
                  height: 200.0,
                  width: 200.0,
                ),
                SizedBox(
                  height: 50.0,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        Dice = Random().nextInt(6) + 1;
                      });
                    },
                    child: Text(
                      'Start',
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.bold),
                    ),
                    style:
                        ElevatedButton.styleFrom(primary: Colors.amber[600])),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
