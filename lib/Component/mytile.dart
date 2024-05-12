import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mytile extends StatelessWidget {
  int min;
   Mytile({super.key,required this.min});
 // int min;

 // Mymin({required this.min})
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyanAccent,
      height: 200,
      child: Center(child: Text(min.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),)),
      width: 300,
    );
  }
}
