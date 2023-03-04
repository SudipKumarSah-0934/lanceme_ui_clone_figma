import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../resources/color_manager.dart';
class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 20,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Profile",style:GoogleFonts.urbanist(fontWeight: FontWeight.w600,fontSize: 18,),),
                Padding(
                  padding: const EdgeInsets.only(top: 15,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Stack(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 28,
                            child:Image.asset("assets/images/ic_home.png"),
                          ),
                          Positioned(
                            bottom: 5,
                            right: -0,
                            child: Container(
                              padding: EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                color: ColorManager.primary,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              constraints: BoxConstraints(
                                minWidth: 12,
                                minHeight: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Jane Copper",style: GoogleFonts.urbanist(fontSize: 16,fontWeight: FontWeight.w600,),),
                          Text("janecopper@gmail.com",style: GoogleFonts.urbanist(fontSize: 12,fontWeight: FontWeight.w400,color: ColorManager.tertiaryColor,),),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(thickness: 1,color: ColorManager.grey,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 10.0,),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ImageIcon(
                        AssetImage("assets/icons/ic_profile_status.png"),
                        size: 25,
                          color: ColorManager.tertiaryColor,
                        ),
                        SizedBox(width: 10,),
                        Text("Set Status",style: GoogleFonts.urbanist(fontWeight: FontWeight.w500,fontSize: 14,),),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(1),
                          decoration: BoxDecoration(
                            color: ColorManager.primary,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          constraints: BoxConstraints(
                            minWidth: 12,
                            minHeight: 12,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text("Online",style: GoogleFonts.urbanist(fontWeight: FontWeight.w400,fontSize: 14,),),
                        ),
                        Icon(Icons.arrow_forward_ios_rounded,color: ColorManager.tertiaryColor,),
                      ],
                    ),

                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 10.0,),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ImageIcon(
                        AssetImage("assets/icons/ic_account.png"),
                        size: 25,
                          color: ColorManager.tertiaryColor,
                        ),
                        SizedBox(width: 10,),
                        Text("Account",style: GoogleFonts.urbanist(fontWeight: FontWeight.w500,fontSize: 14,),),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios_rounded,color: ColorManager.tertiaryColor,),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 10.0,),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ImageIcon(
                        AssetImage("assets/icons/ic_activity.png"),
                        size: 25,
                          color: ColorManager.tertiaryColor,
                        ),
                        SizedBox(width: 10,),
                        Text("Activity",style: GoogleFonts.urbanist(fontWeight: FontWeight.w500,fontSize: 14,),),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios_rounded,color: ColorManager.tertiaryColor,),



                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 10.0,),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ImageIcon(
                        AssetImage("assets/icons/ic_connections.png"),
                        size: 25,
                          color: ColorManager.tertiaryColor,
                        ),
                        SizedBox(width: 10,),
                        Text("Connections",style: GoogleFonts.urbanist(fontWeight: FontWeight.w500,fontSize: 14,),),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios_rounded,color: ColorManager.tertiaryColor,),



                  ],
                ),
              ],
            ),
          ),
          Divider(thickness: 1,color: ColorManager.grey,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text("App Settings",style: GoogleFonts.urbanist(fontWeight: FontWeight.w500,fontSize: 16,),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 10.0,),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ImageIcon(
                          AssetImage("assets/icons/ic_notification.png"),
                          size: 25,
                          color: ColorManager.tertiaryColor,
                        ),
                        SizedBox(width: 10,),
                        Text("Notification",style: GoogleFonts.urbanist(fontWeight: FontWeight.w500,fontSize: 14,),),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios_rounded,color: ColorManager.tertiaryColor,),



                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 10.0,),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ImageIcon(
                          AssetImage("assets/icons/ic_appearance.png"),
                          size: 25,
                          color: ColorManager.tertiaryColor,
                        ),
                        SizedBox(width: 10,),
                        Text("Appearance",style: GoogleFonts.urbanist(fontWeight: FontWeight.w500,fontSize: 14,),),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text("Light",style: GoogleFonts.urbanist(fontWeight: FontWeight.w400,fontSize: 12,),),
                        ),
                        Icon(Icons.arrow_forward_ios_rounded,color: ColorManager.tertiaryColor,),
                      ],
                    ),



                  ],
                ),
              ],
            ),
          ),
          Divider(thickness: 1,color: ColorManager.grey,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text("More",style: GoogleFonts.urbanist(fontWeight: FontWeight.w500,fontSize: 16,),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 10.0,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ImageIcon(
                      AssetImage("assets/icons/ic_privacy.png"),
                      size: 25,
                      color: ColorManager.tertiaryColor,
                    ),
                    SizedBox(width: 10,),
                    Text("Privacy Policy",style: GoogleFonts.urbanist(fontWeight: FontWeight.w500,fontSize: 14,),),
                  ],
                ),



              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 10.0,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ImageIcon(
                      AssetImage("assets/icons/ic_tc.png"),
                      size: 25,
                      color: ColorManager.tertiaryColor,
                    ),
                    SizedBox(width: 10,),
                    Text("Terms & Conditions",style: GoogleFonts.urbanist(fontWeight: FontWeight.w500,fontSize: 14,),),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 10.0,),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ImageIcon(
                          AssetImage("assets/icons/ic_faq.png"),
                          size: 25,
                          color: ColorManager.tertiaryColor,
                        ),
                        SizedBox(width: 10,),
                        Text("Help & Support",style: GoogleFonts.urbanist(fontWeight: FontWeight.w500,fontSize: 14,),),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios_rounded,color: ColorManager.tertiaryColor,),



                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 10.0,),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ImageIcon(
                          AssetImage("assets/icons/ic_faq.png"),
                          size: 25,
                          color: ColorManager.tertiaryColor,
                        ),
                        SizedBox(width: 10,),
                        Text("FAQs",style: GoogleFonts.urbanist(fontWeight: FontWeight.w500,fontSize: 14,),),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios_rounded,color: ColorManager.tertiaryColor,),



                  ],
                ),
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              primary: Colors.red.withOpacity(0),
            ),
            onPressed: () {
              showModalBottomSheet(context: context,shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ), builder: (context){
                return Wrap(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 30,),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Are you sure?",style: GoogleFonts.urbanist(fontWeight: FontWeight.w600,fontSize: 18,),),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16.0),
                              child: Text("Are you sure you want to Logout from the Workspace?",style: GoogleFonts.urbanist(fontWeight: FontWeight.w400,fontSize: 10,color: ColorManager.tertiaryColor,),),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(6),
                                      ),),
                                    primary: ColorManager.logOutColor,
                                    padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/2.7,vertical: 18,)
                                  ),
                                  onPressed: (){},
                                  child: Text("Logout"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text("Cancel",style: GoogleFonts.urbanist(fontWeight: FontWeight.w600,fontSize: 16,color: ColorManager.tertiaryColor,),),
                                ),

                              ],
                            ),
                          ],
                        ),
                      ),
                    ],

                );
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.logout_outlined,color: Colors.red,size: 28,),
                Text("Logout",style: GoogleFonts.urbanist(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.red,),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
