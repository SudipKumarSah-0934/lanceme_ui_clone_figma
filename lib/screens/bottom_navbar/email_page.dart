import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../resources/color_manager.dart';

import '../ui_components/my_textfield.dart';

class EmailPage extends StatefulWidget {
  const EmailPage({Key? key}) : super(key: key);

  @override
  State<EmailPage> createState() => _EmailPageState();
}

class _EmailPageState extends State<EmailPage> {
  final searchController = TextEditingController();
  double kDefaultPadding = 5;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        titleSpacing: 0,
        toolbarHeight: 90,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: Colors.white,
          statusBarBrightness: Brightness.dark,
        ),
        leading: Icon(
          Icons.menu_rounded,
          size: 30,
          color: Colors.black,
        ),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: searchController,
            decoration: InputDecoration(
              hintText: "Search mails",
              contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              hintStyle: GoogleFonts.urbanist(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: ColorManager.tertiaryColor,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(
                  width: 1,
                  color: ColorManager.grey,
                ),
              ),
              filled: false,
            ),
            obscureText: false,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: CircleAvatar(
              radius: 26,
              child: Image.asset("assets/images/ic_home.png", fit: BoxFit.fill),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: width,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: ColorManager.grey,
                    width: 1.0,
                  ),
                ),
              ),
              child:  Padding(
                padding: const EdgeInsets.symmetric(horizontal:10,vertical: 10
                ),
                child: Text(
                  "All inbox",
                  style: GoogleFonts.urbanist(
                    fontWeight: FontWeight.w500,
                    color: ColorManager.tertiaryColor,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
                itemCount: 7,
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: width,
                      height: height / 7.5,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: ColorManager.grey,
                            width: 1.0,
                          ),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                maxRadius: 20,
                                backgroundColor: Colors.transparent,
                                backgroundImage:
                                AssetImage("assets/images/ic_home.png"),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment
                                                    .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding:
                                                    const EdgeInsets.all(
                                                        8.0),
                                                    child: Text(
                                                      "Welcome to LMU mailer",
                                                      style:
                                                      GoogleFonts.urbanist(
                                                        fontSize: 15,
                                                        fontWeight:
                                                        FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    "8:00 AM",
                                                    style: GoogleFonts.urbanist(
                                                      fontSize: 15,
                                                      fontWeight:
                                                      FontWeight.w400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 8.0),
                                                    child: Text(
                                                      "Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit. Aenean.",
                                                      style: GoogleFonts.urbanist(
                                                          fontSize: 13,
                                                          fontWeight:
                                                          FontWeight.w400,
                                                          color: ColorManager
                                                              .tertiaryColor),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                    const EdgeInsets.only(
                                                        top: 15.0),
                                                    child: ImageIcon(
                                                      AssetImage(
                                                          "assets/icons/ic_star.png"),
                                                      size: 40,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
