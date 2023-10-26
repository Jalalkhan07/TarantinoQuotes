import 'package:flutter/material.dart';
import 'package:flutter_pageveiw_text_jalal/appdata.dart';
import 'package:flutter_pageveiw_text_jalal/display_text.dart';
import 'package:share_plus/share_plus.dart';

import 'navbar.dart';

class PageVeiwText extends StatefulWidget {
  const PageVeiwText({super.key});

  @override
  State<PageVeiwText> createState() => _PageVeiwTextState();
}

class _PageVeiwTextState extends State<PageVeiwText> {
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text(
          'Quentin Tarantino Quotes',
          style: TextStyle(

        ),
        ),
        actions: [
          PopupMenuButton<int>(
              itemBuilder: (context) =>
                  [PopupMenuItem(value: 1, child: Text('Share',
                  style: TextStyle(fontSize: 20),))],
              onSelected: (value) {
                if (value == 1) {
                  _shareInfo();
                }
              }),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 400,
              child: PageView.builder(
                  onPageChanged: (Index) {
                    setState(() {
                      selectedIndex = Index;
                    });
                  },
                  controller: PageController(viewportFraction: 0.7),
                  itemCount: appDataText.length,
                  itemBuilder: (context, index) {
                    var _quotes = appDataText[index];
                    var _scale = selectedIndex == index ? 1.0 : 0.8;

                    return TweenAnimationBuilder(tween: Tween(begin: _scale, end: _scale),
                        duration: Duration(microseconds: 300),
                        child: DisplayText(appData: _quotes,),
                        builder: (context,value,child){
                      return Transform.scale(
                        scale: value as double,
                        child: child,
                      );
                        });
                      DisplayText(appData: appDataText[index]);
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    child: new Text(
                      (selectedIndex + 1).toString() +
                          '/' +
                          appDataText.length.toString(),
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  _shareInfo() {
    print(">>>>-Share");

    Share.share(appDataText[selectedIndex].text);
    print(appDataText[selectedIndex].text);
  }
}
