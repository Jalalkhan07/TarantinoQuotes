import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_pageveiw_text_jalal/navbar.dart';
import 'package:flutter_pageveiw_text_jalal/pageveiw-text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    print('>>>>>-initState');

    Timer(
        Duration(seconds: 10),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => PageVeiwText())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      body: SafeArea(
        child:Center(
        child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/yellow_background.jpg'
                    ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ClipOval(
                  child: Image.asset('images/dp_tarantino.jpg',
                  fit: BoxFit.cover
                    ,),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('The good ideas will survive',
                  style: TextStyle(
                    fontSize:(20),
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),
                )
              ],
            )),
        ),),
    );
  }
}
