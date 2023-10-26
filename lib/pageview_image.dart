import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:flutter_pageveiw_image/appdataimage.dart';
//import 'package:flutter_pageveiw_image/display.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'display.dart';
import 'indicator.dart';
import 'appdataimage.dart';
import 'navbar.dart';

class PageviewImageScreen extends StatefulWidget {
  const PageviewImageScreen({super.key});

  @override
  State<PageviewImageScreen> createState() => _PageviewImageScreenState();
}

class _PageviewImageScreenState extends State<PageviewImageScreen> {
  var selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text(
          'Quentin Tarantino Quotes  ',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          PopupMenuButton<int>(
              itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 1,
                      child: Text('Share',
                      style: TextStyle(fontSize: 20),),
                    ),
                  ],
              onSelected: (value) {
                if (value == 1) {
                  _shareInfo();
                }
              }),
        ],
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              height: 350,
              width: 500,
              child: PageView.builder(
                  onPageChanged: (index) {
                    setState(() {
                      selectIndex = index;
                    });
                  },
                  itemCount: appData.length,
                  itemBuilder: (context, Index) {
                    return DisplayImage(
                      appDataImage: appData[Index],
                    );
                  })),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                appData.length,
                    (index) => Indicator(isActive: selectIndex ==index?  true :false ),),
            ],
          ),

        ]),
      ),
    );
  }

  _shareInfo() async {
    ByteData imagebyte = await rootBundle.load(appData[selectIndex].image);
    final temp = await getTemporaryDirectory();
    final path = '${temp.path}/download.jpg';
    File(path).writeAsBytesSync(imagebyte.buffer.asUint8List());
    await Share.shareFiles([path], text: 'image Shared');
  }
}
