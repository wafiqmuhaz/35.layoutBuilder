// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class pageOne extends StatefulWidget {
  @override
  _pageOneState createState() => _pageOneState();
}

class _pageOneState extends State<pageOne> {
  @override
  Widget build(BuildContext context) {
    final mediaH = MediaQuery.of(context).size.height;
    final mediaW = MediaQuery.of(context).size.width;

    final myAB = AppBar(
      title: Text("Flexible Widget"),
    );

    final tabTop = MediaQuery.of(context).padding.top;

    final isP = mediaH - tabTop - myAB.preferredSize.height;

    return Scaffold(
      appBar: myAB,
      body: Container(
        width: mediaW,
        height: mediaH * 0.5,
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            myCon(
              mediaW,
            ),
            myCon(
              mediaW,
            ),
            myCon(
              mediaW,
            ),
          ],
        ),
      ),
    );
  }
}

class myCon extends StatelessWidget {
  double mediaW;
  myCon(this.mediaW);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: mediaW * 0.2,
          height: constraints.maxHeight * 0.5,
          color: Colors.red,
        );
      },
    );
  }
}
