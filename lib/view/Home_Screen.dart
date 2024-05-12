//import 'package:checkbox/Components/Custome_Button.dart';
//import 'package:checkbox/Components/ListTile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../Component/Custome_Button.dart';
import '../Component/ListTile.dart';
import 'Expansiontail_Screen.dart';

class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({Key? key}) : super(key: key);

  @override
  _HomeScreen1State createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
  List<String> listData = ["khalid", "Khan", "ali", "330"];
  Map<String, bool> checkedState = {};
  Map<String, Color> itemColors = {};

  @override
  void initState() {
    super.initState();
    // Initialize checkedState map with all items initially unchecked
    for (String item in listData) {
      checkedState[item] = false;
      itemColors[item] = Colors.black; // Initialize text color to black
    }
  }

  void updateItemColors(String item, bool isChecked) {
    setState(() {
      if (isChecked) {
        itemColors[item] = Colors.blue; // Change text color to blue if checked
      } else {
        itemColors[item] = Colors.black; // Otherwise, keep text color black
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.deepPurpleAccent,),
      body: Column(
        children: [

          Expanded(
            //flex adject listTile
            flex: 5,
            child: ListView.builder(
            //  shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: listData.length,
              itemBuilder: (context, index) {
                String item = listData[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      border: Border.all(
                        color: checkedState[item]!
                            ? Colors.blue
                            : Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text(
                        item,
                        style: TextStyle(color: itemColors[item]),
                      ),
                      leading: CustomCheckbox(
                        value: checkedState[item] ?? false,
                        onChanged: (value) {
                          setState(() {
                            // Update checked state of the item
                            checkedState[item] = value!;
                            // Update text color and trailing icon color
                            updateItemColors(item, value);
                          });
                        },
                        activeColor: Colors.blue,
                      ),
                      trailing: IconButton(
                        icon:
                            Icon(Icons.chevron_left, color: itemColors[item]),
                        onPressed: () {
                          print(checkedState);
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: Get.height * 0.01),

          Expanded(
            //flex adject button portion
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [

                  Expanded(
                    flex: 5,
                    child: CustomButton1(
                      icon: FaIcon(FontAwesomeIcons.repeat,color: Colors.white,),
                      text: "Reset",
                      backgroundColor: Colors.redAccent,
                      textColor: Colors.white,
                      buttonHeight: Get.height * 0.08,
                      buttonWidth: Get.width * 0.07,
                      iconBeforeText: true, // Icon before text
                     onPressed: (){

                     }, borderColor: Colors.redAccent, borderradiussize: 22.0, fontWeight:FontWeight.bold,
                    ),
                  ),
                  SizedBox(width:Get.width * 0.02),
                  Expanded(
                    flex: 6,

                    child: CustomButton1(
                      text: "Continue",
                      backgroundColor: Colors.blueAccent,
                      textColor: Colors.white,
                      icon: FaIcon(FontAwesomeIcons.chevronRight,color: Colors.white,),
                      buttonHeight: Get.height * 0.08,
                      buttonWidth: Get.width * 0.02,
                      iconBeforeText: false, // Icon after text
                      onPressed: (){
                        Get.toNamed("/ExpansionTailScreen");
                      }, borderColor: Colors.blue, borderradiussize: 22.0, fontWeight:FontWeight.bold,
                    ),
                  ),



                ],
              ),
            )
          ),
        ],
      ),
    );
  }
}
