import 'package:flutter/material.dart';
import 'package:flutter_pageveiw_text_jalal/appdata.dart';

class DisplayText extends StatelessWidget {
  final AppData appData;

  const DisplayText({super.key, required this.appData});

  @override
  Widget build(BuildContext context) {
    return Stack  (children: [
      Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            color: Colors.orangeAccent),
      ),
      Center(
        child: Text(
          appData.text,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
      ),
    ]);
  }
}
