
import 'package:flutter/material.dart';
class Indicator extends StatelessWidget {
  final bool isActive;

  const Indicator({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(duration: Duration(microseconds: 400),
      margin: EdgeInsets.symmetric(vertical: 30,horizontal: 5),
      width: isActive ? 20:10,
      height: 10,
      decoration: BoxDecoration(
        color: isActive? Colors.orangeAccent:Colors.black,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
