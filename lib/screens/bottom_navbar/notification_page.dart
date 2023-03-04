import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../resources/color_manager.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  final List<String> _options = [
    "All",
    "Invites",
    "Mentions",
    "Workspace",
    "Emails",
    "Unread"
  ];
  final List<bool> _selected = [true, false, false, false, false, false];

  Widget _buildChips(double width, double height) {
    List<Widget> chips = [];

    for (int i = 0; i < _options.length; i++) {
      FilterChip filterChip = FilterChip(
        selected: _selected[i],
        labelPadding: EdgeInsets.symmetric(
          horizontal: 10,
        ),
        showCheckmark: false,
        label: Text(
          _options[i],
          style: GoogleFonts.urbanist(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: ColorManager.grey,
        selectedColor: ColorManager.chipColor,
        onSelected: (bool selected) {
          setState(() {
            _selected[i] = selected;
          });
        },
      );

      chips.add(Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: filterChip));
    }

    return Container(
      height: height*0.07,
      width: width,
      alignment: Alignment.center,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: chips,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Column(
        children: [
          _header(height, width),
          _buildChips(width,height),
          _notificationList(width, height)
        ],
      ),
    );
  }
}

Widget _notificationList(double width, double height) {
  return SingleChildScrollView(
    child: SizedBox(
      height:height/1.4,
      child: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        itemBuilder:(BuildContext context,int index) {
            return Container(
              width: width,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: ColorManager.grey,
                    width: 1.0,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0, vertical: 8.0,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          child: Image.asset("assets/icons/img.png",
                            color: ColorManager.white, scale: 0.7,),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Jane Copper has downloaded \n“Wireframing Landing Page",
                                style: GoogleFonts.urbanist(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "2m ago",
                                style: GoogleFonts.urbanist(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: ColorManager.tertiaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle, color: ColorManager.chipColor,),
                          width: 10,
                          height: 10,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    ),
  );
}

Widget _header(double height, double width) {
  return Container(
    width: width,
    height: height*0.09,
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: ColorManager.grey,
          width: 1.0,
        ),
      ),
    ),
    padding: EdgeInsets.all(16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Notification",
          style: GoogleFonts.urbanist(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        Icon(
          Icons.more_vert_rounded,
          size: 30,
        ),
      ],
    ),
  );
}
