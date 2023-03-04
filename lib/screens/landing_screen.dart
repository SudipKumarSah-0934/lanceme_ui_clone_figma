import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lanceme_figma/resources/color_manager.dart';

import 'bottom_navbar/email_page.dart';
import 'bottom_navbar/home_page.dart';
import 'bottom_navbar/notification_page.dart';
import 'bottom_navbar/profile_page.dart';
import 'bottom_navbar/search_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  List pages = [
    HomePage(),
    SearchPage(),
    EmailPage(),
    NotificationPage(),
    ProfilePage(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(top: BorderSide(color: ColorManager.grey, width: 1.0,),),),
        child: BottomNavigationBar(
          onTap: onTap,
          currentIndex: currentIndex,
          selectedLabelStyle: GoogleFonts.urbanist(fontSize: 14,fontWeight: FontWeight.w500),
          unselectedLabelStyle: GoogleFonts.urbanist(fontSize: 14,fontWeight: FontWeight.w500),
          backgroundColor: Colors.transparent,
          selectedItemColor: ColorManager.primary,
          unselectedItemColor: ColorManager.tertiaryColor,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          items:  <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.all(8.0),
                child: ImageIcon(
                  AssetImage("assets/icons/ic_home.png"),
                  size: 25,
                ),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.all(8.0),
                child: ImageIcon(
                  AssetImage("assets/icons/ic_search.png"),
                  size: 25,
                ),
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ImageIcon(
                      AssetImage("assets/icons/ic_email.png"),
                      size: 25,
                    ),
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
                        '3',
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
              label: 'Email',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.all(8.0),
                child: ImageIcon(
                  AssetImage("assets/icons/ic_notification.png"),
                  size: 25,
                ),
              ),
              label: 'Notification',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.all(8.0),
                child: ImageIcon(
                  AssetImage("assets/icons/ic_profile.png"),
                  size: 25,
                ),
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
