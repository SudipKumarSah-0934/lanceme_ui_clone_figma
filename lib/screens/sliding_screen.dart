import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lanceme_figma/resources/color_manager.dart';
import 'package:lanceme_figma/screens/sign_in_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'landing_screen.dart';

class SlidingScreen extends StatefulWidget {
  const SlidingScreen({Key? key}) : super(key: key);

  @override
  State<SlidingScreen> createState() => _SlidingScreenState();
}

class _SlidingScreenState extends State<SlidingScreen> {
  final CarouselController _controller1 = CarouselController();
  int newIndex = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: Colors.white,
          statusBarBrightness: Brightness.dark,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CarouselSlider(
              carouselController: _controller1,
              options: CarouselOptions(
                pageSnapping: false,
                viewportFraction: 1,
                autoPlay: true,
                scrollDirection: Axis.horizontal,
                aspectRatio: 16/4,
                initialPage: 0,
                enableInfiniteScroll: false,
                padEnds: false,
                onPageChanged: (index, reason) {
                  setState(
                        () {
                      newIndex = index;
                    },
                  );
                },
                enlargeCenterPage: false,
                height: height * 0.7,
              ),
              items: [1, 2, 3, 4].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Column(
                      children: [
                        Container(
                          height: height * 0.5,
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.symmetric(horizontal: 20,),
                          decoration: BoxDecoration(
                            color: ColorManager.grey,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(24.0),
                              topRight: Radius.circular(24.0),
                            ),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              "img",
                              style: GoogleFonts.inter(
                                  fontSize: 85,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "What is Lorem Ipsum?",
                              style: GoogleFonts.urbanist(
                                fontWeight: FontWeight.w600,
                                fontSize: 24,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                              style: GoogleFonts.urbanist(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: ColorManager.lightGrey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                );
              }).toList(),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                alignment: Alignment.centerLeft,
                child: AnimatedSmoothIndicator(
                  activeIndex: newIndex,
                  count: 4,
                  axisDirection: Axis.horizontal,
                  effect: ExpandingDotsEffect(
                      activeDotColor: ColorManager.primary,
                      dotColor: ColorManager.grey,
                      dotHeight: 12,
                      dotWidth: 12,
                      spacing: 10),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: ColorManager.primary,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                    fixedSize: Size(width * 0.92, 55),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6))),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignInPage(),),
                  );
                },
                child: Text(
                  "Next",
                  style: GoogleFonts.urbanist(
                    fontSize: 18,
                    color: Colors.white70,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                  child: Text(
                    'Skip',
                    style: GoogleFonts.urbanist(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: ColorManager.primary),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LandingPage()),
                    );
                  })
            ],
          ),
        ],
      ),
    );
  }
}
