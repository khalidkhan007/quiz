import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> listName = ["khalid", "ahmd", "ali", "jan"];
  List<String> countryname = ["pakistan", "india", "iran"];
  List<bool> isExpandedList = List.generate(4, (index) => false); // Initialize with false for each tile
  List<Set<int>> selectedCountryIndicesList = List.generate(4, (index) => {}); // Initialize with empty sets

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ExpansionTile Example"),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: listName.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: isExpandedList[index] ? Colors.white : Color(0xffF8F8FA),
                borderRadius: BorderRadius.circular(6),
              ),
              child: ExpansionTile(
                iconColor: isExpandedList[index] ? Colors.blue : Colors.black,
                shape: Border.fromBorderSide(BorderSide(color: Colors.blue)),
                trailing: isExpandedList[index] ? Icon(Icons.keyboard_arrow_left) : Icon(Icons.keyboard_arrow_down),
                title: Text(
                  listName[index],
                  style: TextStyle(color: isExpandedList[index] ? Colors.blue : Colors.black),
                ),
                children: List.generate(countryname.length, (countryIndex) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        border: Border.fromBorderSide(BorderSide(
                          color: selectedCountryIndicesList[index].contains(countryIndex) ? Color(0xff2094FF) : Colors.transparent, // Check if the country is selected, set the border color accordingly
                        )),
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      child: ListTile(
                        onTap: () {
                          setState(() {
                            // Toggle the selection state of the country
                            if (selectedCountryIndicesList[index].contains(countryIndex)) {
                              selectedCountryIndicesList[index].remove(countryIndex); // Unselect the country if it's already selected
                            } else {
                              if (selectedCountryIndicesList[index].length < 3) { // Limit selection to 3 countries
                                selectedCountryIndicesList[index].add(countryIndex); // Select the country if the limit is not reached
                              }
                            }
                          });
                        },
                        leading: selectedCountryIndicesList[index].contains(countryIndex)
                            ? Icon(Icons.check_circle, color: Color(0xff2094FF))
                            : Icon(Icons.circle_outlined),
                        title: Text(
                          countryname[countryIndex],
                          style: GoogleFonts.openSans(
                            color: selectedCountryIndicesList[index].contains(countryIndex) ? Colors.blue : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
                onExpansionChanged: (expanded) {
                  setState(() {
                    isExpandedList[index] = expanded; // Update expanded state for the clicked tile
                  });
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
