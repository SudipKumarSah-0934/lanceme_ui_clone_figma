import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lanceme_figma/resources/color_manager.dart';
import 'package:lanceme_figma/screens/sliding_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SlidingScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorManager.primary,
      appBar: AppBar(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: ColorManager.primary),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children:  <Widget>[
              Padding(padding: EdgeInsets.only(bottom: 30.0),child:Text("Version 0.0.1",style: GoogleFonts.urbanist(fontWeight: FontWeight.w500,color: Colors.white54,fontSize: 14,),),),
            ],),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
               Image.asset(
                'assets/images/splash_head.png',
                 width: width*0.65,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
