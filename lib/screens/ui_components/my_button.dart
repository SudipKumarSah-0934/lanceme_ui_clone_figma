import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lanceme_figma/resources/color_manager.dart';

class MyButton extends StatelessWidget {
  final Function()? onPressed;
  final String buttonText;
  final double width;

  const MyButton(
      {super.key, required this.onPressed, required this.buttonText, required this.width});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.fromLTRB(0, 14, 0, 10),
        height: 55,
        width: width,
        decoration: BoxDecoration(
          color:ColorManager.primary,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Text(
          buttonText,
          textAlign: TextAlign.center,
          style: GoogleFonts.urbanist(
            color: Colors.white70,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}