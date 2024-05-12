import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color textcolor;
  final VoidCallback? onPressed;
  final Color btncolor;
  final Color bordercolor;

  final double btnwidth;
  final double btnheight;
  const CustomButton({
    Key? key,
    required this.text,
    this.onPressed,
    required this.btncolor,
    required this.btnwidth,
    required this.btnheight,
    required this.textcolor,
    required this.bordercolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height*1;
    var weidth=MediaQuery.of(context).size.width*1;

    return GestureDetector(
      onTap: onPressed,
      child: Container(

        height: btnheight,//height*0.06,
        width: btnwidth,//weidth*.2,
        decoration: BoxDecoration(
          color: btncolor,
          border: Border.all(color: bordercolor),
          borderRadius: BorderRadius.circular(17),
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.openSans(
              textStyle: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: textcolor, // Text color
              ),
            ),
          ),
        ),
      ),
    );
  }
}
