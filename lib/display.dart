import 'package:flutter/material.dart';

import 'package:flutter_pageveiw_text_jalal/appdataimage.dart';

class DisplayImage extends StatelessWidget {
  final AppDataImage appDataImage;

  const DisplayImage({super.key, required this.appDataImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(appDataImage.image),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
