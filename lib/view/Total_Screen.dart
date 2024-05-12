//import 'dart:html';


import 'package:untitled3/Component/Custome_Button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numberpicker/numberpicker.dart';

import '../Component/numberPicker.dart';
import '../Component/roundbutton.dart';

class Total_Screen extends StatefulWidget {
  const Total_Screen({super.key});

  @override
  State<Total_Screen> createState() => _Total_ScreenState();
}

class _Total_ScreenState extends State<Total_Screen> {
     int _number=0;
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height*1;
    var width=MediaQuery.of(context).size.width*1;
    //var height=MediaQuery.of(context).size.height*1;
    //var width=MediaQuery.of(context).size.width*1;
    List khan=["Legea nr. 360/2002 privind Statutul poliţistului","Legea nr. 218/2002 (republicată) privind organizarea şi funcţionarea Poliţiei Române","Capitolul I Dispoziții generale"];
    List number=["0"];
    return  Scaffold(
      appBar:AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.white,), onPressed: () { Get.back(); },),
      title: Text("Selectează Numărul întrebărilor",style: GoogleFonts.openSans(
          textStyle:TextStyle(color: Colors.white,fontSize: 18),),),
      ) ,
      body:Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 0.0, // Adjust for desired spread
                    blurRadius: 2.0, // Adjust for desired blur
                    offset: Offset(0.0, 4.0), // Adjust for shadow position (y-axis)
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.elliptical(40, 20),bottomRight: Radius.elliptical(40, 20))),
            width: width*1,
            height:height*.3 ,

            child: Column(
              children: [
              Expanded(
                child:  ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: khan.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Row(
                              children: [
                                Expanded( // Wrap the Text widget with Expanded
                                  child: Text(
                                    khan[index],
                                    textAlign: TextAlign.left,
                                    overflow: TextOverflow.clip,
                                  ),
                                ),
                                Text(number[0]),
                              ],
                            ),
                            Divider(
                              thickness: 1,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),

          ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     // Divider(thickness: 1,color: Colors.grey,),
                      Text("Total:"),
                      Text("0"),

                    ],
                  ),
                ),
              ],
            ),

          ),
        SizedBox(height: height*.01,),

          CustomNumberpicker(),
          SizedBox(height: height*.02,),
        SizedBox(height: Get.height*.01,),

          CustomNumberpicker(),
          SizedBox(height: Get.height*.02,),

          Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    CustomButton(text: "+5", btncolor: Colors.white, btnwidth: 90, btnheight: 50, textcolor: Colors.blue, bordercolor: Colors.blue,),
    SizedBox(width: width*.02,),
    CustomButton(text: "+10", btncolor: Colors.white, btnwidth: 90, btnheight: 50, textcolor: Colors.blue, bordercolor: Colors.blue,),
    SizedBox(width: width*.02,),
    CustomButton(text: "+25", btncolor: Colors.white, btnwidth: 90, btnheight: 50, textcolor: Colors.blue, bordercolor: Colors.blue,),
  ],
),
          SizedBox(height: height*.04,),

//          CustomButton(text: "Generează Test", btncolor: Colors.blue, btnwidth: 280, btnheight: 50, textcolor: Colors.white, bordercolor: Colors.blue,),

    CustomButton1(text: "+5", backgroundColor: Colors.white, textColor: Colors.blue, borderColor: Colors.blue,buttonHeight:50 ,buttonWidth:90, borderradiussize: 17.0, fontWeight: FontWeight.w500 ,),
    SizedBox(width: Get.width*.02,),
    CustomButton1(text: "+10", backgroundColor: Colors.white, textColor: Colors.blue, borderColor: Colors.blue,buttonHeight:50 ,buttonWidth:90, borderradiussize: 17.0, fontWeight: FontWeight.w500 ,),

    SizedBox(width: Get.width*.02,),
    CustomButton1(text: "+25", backgroundColor: Colors.white, textColor: Colors.blue, borderColor: Colors.blue,buttonHeight:50 ,buttonWidth:90, borderradiussize: 17.0, fontWeight: FontWeight.w500 ,),
          SizedBox(height: Get.height*.04,),
          CustomButton1(text: "Generează Test",buttonHeight: 50,buttonWidth:280 , backgroundColor: Colors.blue, textColor: Colors.white, borderColor: Colors.blue, borderradiussize: 17, fontWeight: FontWeight.bold)

  ],
),




    );
  }
}

