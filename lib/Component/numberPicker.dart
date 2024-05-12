import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class CustomNumberpicker extends StatefulWidget {
  const CustomNumberpicker({super.key});

  @override
  State<CustomNumberpicker> createState() => _CustomNumberpickerState();
}

class _CustomNumberpickerState extends State<CustomNumberpicker> {
  int _number=0;
  @override
  Widget build(BuildContext context) {
    return    Container(
      padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
      decoration: BoxDecoration(
       // color: Colors.white,

        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          NumberPicker(
            itemHeight: 75,
            itemWidth: 80,
            minValue: 0,
            selectedTextStyle: TextStyle(color: Colors.blue,fontSize: 34,fontWeight: FontWeight.bold),
            maxValue: 99,
            value: _number,
            zeroPad: false,
            textStyle: TextStyle(color: Colors.grey,fontSize: 24),
            decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(
                    color: Colors.blue,
                  ),
                  bottom: BorderSide(
                      color: Colors.blue
                  )
              ),
            ),
            onChanged: (value) {
              setState(() {
                _number = value;
              });
            },
          )

        ],
      ),
    );
  }
}
