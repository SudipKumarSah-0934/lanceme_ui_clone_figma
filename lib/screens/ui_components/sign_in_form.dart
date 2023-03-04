
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lanceme_figma/resources/color_manager.dart';
import 'package:lanceme_figma/screens/landing_screen.dart';

import 'my_button.dart';
import 'my_textfield.dart';

class LoginBodyScreen extends StatefulWidget {
  const LoginBodyScreen({super.key});

  @override
  State<LoginBodyScreen> createState() => _LoginBodyScreenState();
}

class _LoginBodyScreenState extends State<LoginBodyScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool _rememberMeFlag = false;

  void showErrorMessage(String message) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(message),
          );
        });
  }

  String _errorMessage = "";

  void validateEmail(String val) {
    if (val.isEmpty) {
      setState(() {
        _errorMessage = "Email can not be empty";
      });
    } else if (!EmailValidator.validate(val, true)) {
      setState(() {
        _errorMessage = "Invalid Email Address";
      });
    } else {
      setState(() {
        _errorMessage = "";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: SizedBox(
            height: height*0.7,
            width: width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email",
                      style: GoogleFonts.urbanist(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    MyTextField(
                      onChanged: (() {
                        validateEmail(emailController.text);
                      }),
                      controller: emailController,
                      hintText: "hello@gmail.com",
                      obscureText: false,
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.fromLTRB(8, 0, 0, 0),
                      child: Text(
                        _errorMessage,
                        style: GoogleFonts.urbanist(
                          fontSize: 12,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    Text(
                      "Password",
                      style: GoogleFonts.urbanist(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    MyTextField(
                      controller: passwordController,
                      hintText: "**************",
                      obscureText: true,
                      suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                               Transform.scale(
                                 scale: 1.3,
                                 child: Checkbox(
                                  value: _rememberMeFlag,
                                   activeColor: ColorManager.primary,
                                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                  onChanged: (value) => setState(() {
                                    _rememberMeFlag = !_rememberMeFlag;
                                  }),
                              ),
                               ),
                               Text(
                                "Remember me",
                                style:  GoogleFonts.urbanist(fontSize:14,fontWeight:FontWeight.w500,color: Colors.black),
                              )
                            ],
                          ),
                          onTap: () => setState(() {
                            _rememberMeFlag = !_rememberMeFlag;
                          }),
                        ),
                         Text(
                           "Forgot password ?",
                           style:  GoogleFonts.urbanist(fontSize:14,fontWeight:FontWeight.w500,color: ColorManager.primary),
                         )
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MyButton(
                        onPressed:(){
                          Get.to(() => LandingPage());
                        },
                        buttonText: 'Login',
                        width:width
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account?",
                              style: GoogleFonts.urbanist(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: ColorManager.tertiaryColor,
                              )),
                          TextButton(
                            child: Text(
                              "Sign up",
                              style: GoogleFonts.urbanist(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: ColorManager.primary,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),

      ),
    );
  }
}