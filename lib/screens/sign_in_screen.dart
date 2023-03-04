import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lanceme_figma/screens/ui_components/sign_in_form.dart';

import '../resources/color_manager.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 80,
        iconTheme: IconThemeData(
          color: Colors.white70,
        ),
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: ColorManager.primary),
        title: Text(
          "Sign in",
          style: GoogleFonts.urbanist(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            color: Colors.white70,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical:20,horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Welcome Back!",style: GoogleFonts.urbanist(fontSize: 20,fontWeight: FontWeight.w600,),),
              SizedBox(height: 10,),
              Text("Login to your account",style: GoogleFonts.urbanist(fontSize: 16,fontWeight: FontWeight.w400,color: ColorManager.grey,),),
              SizedBox(height: 10,),
              LoginBodyScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
