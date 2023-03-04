import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../../resources/color_manager.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;
  int pageIndex = 0;
  int _counter = 3;
  double percent = 40;
  var list = [{'Template':"Kamban",'Status':"On hold",'Last Updated':"2m ago"},{'Template':"Scrum",'Status':"On hold",'Last Updated':"2m ago"},{'Template':"Bug Report",'Status':"On hold",'Last Updated':"2m ago"},];
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  onPageChanged(int pageIndex) {
    _pageController.animateToPage(pageIndex,
        duration: Duration(microseconds: 300), curve: Curves.bounceIn);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 4,
      child: Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              titleSpacing: 0,
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarIconBrightness: Brightness.dark,
                statusBarColor: Colors.white,
                statusBarBrightness: Brightness.dark,
              ),
              leading: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 12.0,
                ),
                child: Image.asset("assets/images/ic_logo.png"),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Lancemeup",
                    style: GoogleFonts.urbanist(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_sharp,
                    color: Colors.black,
                    size: 30,
                  ),
                ],
              ),
              actions: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: ImageIcon(
                    AssetImage("assets/icons/ic_search.png"),
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ],
              bottom: TabBar(
                labelPadding: EdgeInsets.symmetric(horizontal: 10),
                isScrollable: true,
                indicatorColor: ColorManager.primary,
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: ColorManager.primary,
                unselectedLabelColor: ColorManager.tertiaryColor,
                tabs: [
                  Tab(
                    child: Row(
                      children: [
                        ImageIcon(
                          AssetImage("assets/icons/ic_project_tools.png"),
                          size: 30,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Project Tools",
                          style: GoogleFonts.urbanist(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      children: [
                        Stack(
                          children: <Widget>[
                            ImageIcon(
                              AssetImage("assets/icons/ic_chat.png"),
                              size: 30,
                            ),
                            Positioned(
                              right: -0,
                              top: -0,
                              child: Container(
                                padding: EdgeInsets.all(1),
                                decoration: BoxDecoration(
                                  color: ColorManager.primary,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                constraints: BoxConstraints(
                                  minWidth: 15,
                                  minHeight: 15,
                                ),
                                child: Text(
                                  '$_counter',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Chat",
                          style: GoogleFonts.urbanist(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      children: [
                        ImageIcon(
                          AssetImage("assets/icons/ic_drive.png"),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Drive",
                          style: GoogleFonts.urbanist(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      children: [
                        ImageIcon(
                          AssetImage("assets/icons/ic_tracker.png"),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Tracker",
                          style: GoogleFonts.urbanist(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            body: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                _buildProjectTools(height, width, percent,list),
                Center(
                  child: Text(
                    "Chats",
                    style: GoogleFonts.urbanist(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "Drive",
                    style: GoogleFonts.urbanist(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "Tracker",
                    style: GoogleFonts.urbanist(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildProjectTools(double height, double width, double percent, List<Map<String, String>> list) {
  return ListView.builder(
    itemCount: list.length,
    itemBuilder: (BuildContext context, int index) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
        child: Container(
          height: height / 3.5,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(4),
            ),
            border: Border.all(
                color: ColorManager.grey, width: 1, style: BorderStyle.solid),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Revamp Project",
                          style: GoogleFonts.urbanist(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        ImageIcon(
                          AssetImage("assets/icons/ic_world.png"),
                          color: ColorManager.primary,
                        ),
                      ],
                    ),
                    Icon(
                      Icons.more_vert,
                      size: 30,
                    ),
                  ],
                ),
                Table(

                  columnWidths: const {0: FractionColumnWidth(0.4)},
                  children: [
                    TableRow(children: [
                      Text(
                        "Template:",
                        style: GoogleFonts.urbanist(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: ColorManager.tertiaryColor,
                        ),
                      ),
                      Text(
                        list[index].values.elementAt(0),
                        style: GoogleFonts.urbanist(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      Text(
                        "Status:",
                        style: GoogleFonts.urbanist(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: ColorManager.tertiaryColor,
                        ),
                      ),
                      Text(
                        list[index].values.elementAt(1),
                        style: GoogleFonts.urbanist(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      Text(
                        "Last Updated:",
                        style: GoogleFonts.urbanist(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: ColorManager.tertiaryColor,
                        ),
                      ),
                      Text(
                        list[index].values.elementAt(2),
                        style: GoogleFonts.urbanist(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ]),
                  ],
                ),
                LinearPercentIndicator(
                  padding: EdgeInsets.zero,
                  width: width * 0.65,
                  animation: true,
                  percent: percent / 100,
                  lineHeight: 10.0,
                  barRadius: Radius.circular(10),
                  trailing: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                    ),
                    child: Text(
                      "$percent%",
                      style: GoogleFonts.inter(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        color: ColorManager.primary,
                      ),
                    ),
                  ),
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  progressColor: ColorManager.primary,
                  backgroundColor: ColorManager.grey,
                ),
                Container(
                  padding: EdgeInsets.zero,
                  width: width,
                  child: Stack(
                    children: const [
                      Positioned(
                        child: CircleAvatar(
                          radius: 25,
                          child: Image(
                            image: AssetImage(
                              "assets/images/img.png",
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 35.0,
                        child: CircleAvatar(
                          radius: 25,
                          child: Image(
                            image: AssetImage(
                              "assets/images/img_1.png",
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 65.0,
                        child: CircleAvatar(
                          radius: 25,
                          child: Image(
                            image: AssetImage(
                              "assets/images/img_2.png",
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 95.0,
                        child: CircleAvatar(
                          radius: 25,
                          child: Image(
                            image: AssetImage(
                              "assets/images/img_3.png",
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 125.0,
                        child: CircleAvatar(
                          radius: 25,
                          child: Image(
                            image: AssetImage(
                              "assets/images/img_4.png",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  );
}
