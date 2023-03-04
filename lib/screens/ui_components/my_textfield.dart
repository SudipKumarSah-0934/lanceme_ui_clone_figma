// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import '../../resources/color_manager.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
   final Icon? suffixIcon;
  final Function()? onChanged;

   const MyTextField(
      {super.key,
        required this.controller,
        required this.hintText,
        required this.obscureText,
        this.suffixIcon,
        this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        hintStyle: GoogleFonts.urbanist(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(width: 2,color: ColorManager.grey,),
        ),
        suffixIcon: suffixIcon,
        suffixIconColor: ColorManager.tertiaryColor,
        filled: false,
      ),
    );
  }
}