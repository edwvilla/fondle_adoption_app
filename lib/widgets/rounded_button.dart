import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    @required this.backgroundColor,
    @required this.onPressed,
    @required this.fontColor,
    @required this.title,
  });

  final Color backgroundColor;
  final Color fontColor;
  final void Function() onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: backgroundColor,
      padding: const EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
      elevation: 10,
      child: Container(
        width: 210,
        height: 40,
        child: Center(
          child: Text(
            title,
            style: GoogleFonts.oswald(
              color: fontColor,
              fontSize: 16,
              letterSpacing: .5,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      onPressed: onPressed,
    );
  }
}
