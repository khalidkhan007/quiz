import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton1 extends StatelessWidget {
  final VoidCallback? onPressed; // Changed from OnPressed to onPressed
  final String text;
  final Color backgroundColor;
  final Color borderColor; // Changed from bordercolor to borderColor
  final Color textColor;
  final double borderradiussize;
  final FontWeight fontWeight;
  final Widget? icon;
  final double buttonHeight;
  final double buttonWidth;
  final bool iconBeforeText;

  const CustomButton1({
    Key? key,
    this.onPressed, // Changed from OnPressed to onPressed
    required this.text,
    required this.backgroundColor,
    required this.textColor,
    this.icon,
    this.buttonHeight = 50.0,
    this.buttonWidth = 200.0,
    this.iconBeforeText = true,
    required this.borderColor,
    required this.borderradiussize,
    required this.fontWeight, // Changed from bordercolor to borderColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed, // Changed from OnPressed to onPressed
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(color: borderColor), // Changed from bordercolor to borderColor
          borderRadius: BorderRadius.circular(borderradiussize!),
        ),
        height: buttonHeight,
        width: buttonWidth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (iconBeforeText && icon != null) icon!, // Added null check
            const SizedBox(width: 10.0),
            Text(
              text,
              style: GoogleFonts.openSans(
                fontWeight: fontWeight,
                fontSize: 22.0,
                color: textColor,
              ),
            ),
            const SizedBox(width: 10.0),
            if (!iconBeforeText && icon != null) icon!, // Added null check
          ],
        ),
      ),
    );
  }
}
