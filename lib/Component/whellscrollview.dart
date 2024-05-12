import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'mytile.dart';

class CustomScrollWell extends StatefulWidget {
  const CustomScrollWell({super.key});

  @override
  State<CustomScrollWell> createState() => _CustomScrollWellState();
}

class _CustomScrollWellState extends State<CustomScrollWell> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,),
      body:  Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: CupertinoColors.systemBlue),

            bottom: BorderSide(color: CupertinoColors.systemBlue),
          )
        ),
        child: ListWheelScrollView.useDelegate(
          itemExtent: 50,
            perspective: 0.005,
            diameterRatio: 1.2,

            physics: FixedExtentScrollPhysics(),
            childDelegate: ListWheelChildBuilderDelegate(

              childCount: 50,

              builder: (context, index) {
            return  Mytile(min: index,);
          },)

        ),
      ),
    );


  }
}
