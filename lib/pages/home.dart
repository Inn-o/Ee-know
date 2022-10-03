import 'dart:ui';

import 'package:bingwa_clone/pages/logpg.dart';
import 'package:bingwa_clone/utils/colors.dart';
import 'package:bingwa_clone/utils/dimensions.dart';
import 'package:bingwa_clone/widgets/appBar.dart';
import 'package:bingwa_clone/widgets/appIcon.dart';
import 'package:bingwa_clone/widgets/bigTxt.dart';
import 'package:bingwa_clone/widgets/smallTxt.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

class HomePg extends StatefulWidget {
  const HomePg({super.key});

  @override
  State<HomePg> createState() => _HomePgState();
}

class _HomePgState extends State<HomePg> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.maybeOf(context)!.size;
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        elevation: 0,
        title: Center(
          child: SmallText(
            text: "World of Bingwa",
            color: Colors.grey.shade800,
            size: Dimensions.height25,
          ),
        ),
        actions: [
          CircleAvatar(
            radius: Dimensions.radius15,
            child: AppIcon(
              icon: Icons.share_sharp,
              bgColor: AppColors.mainColor,
              iconColor: Colors.grey.shade600,
              iconSize: Dimensions.height20,
            ),
          ),
        ],
        leading: AppIcon(
          icon: Icons.menu_sharp,
          iconColor: Colors.grey.shade600,
          bgColor: AppColors.mainColor,
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.height15),
              child: Container(
                height: Dimensions.height270,
                width: screenSize.width,
                //color: Colors.red,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/admission3.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: Dimensions.height25,
                            left: Dimensions.height15,
                          ),
                          child: BigText(
                            text: "SCHOOL ADMISSION",
                            color: Colors.white,
                            size: Dimensions.height45,
                          ),
                        ),
                        SizedBox(
                          height: Dimensions.height10,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: Dimensions.height15,
                          ),
                          child: Container(
                            height: Dimensions.height70,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: ExpandableText(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                                expandText: "read more",
                                collapseText: "show less",
                                linkColor: Colors.lightBlue,
                                maxLines: 4,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Dimensions.height10,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: SmallText(
                            text: "Get Started",
                            color: Colors.white,
                            size: Dimensions.font13,
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.buttonBgColor,
                            fixedSize:
                                Size(Dimensions.width120, Dimensions.height20),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(Dimensions.radius50),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Dimensions.height10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.height15),
              child: Container(
                height: Dimensions.height120,
                width: screenSize.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius15),
                    topLeft: Radius.circular(Dimensions.radius15),
                    bottomLeft: Radius.circular(Dimensions.radius15),
                    bottomRight: Radius.circular(Dimensions.radius15),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 3,
                        offset: Offset(Dimensions.blur3, Dimensions.blur3))
                  ],
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    Positioned(
                      child: Container(
                        width: screenSize.width / 2.5,
                        // ignore: prefer_const_constructors
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/admission3.jpg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(Dimensions.radius15),
                            bottomLeft: Radius.circular(Dimensions.radius15),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: Dimensions.height157,
                      top: -Dimensions.height25,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: Dimensions.height5),
                        child: Container(
                          height: Dimensions.height120,
                          width: screenSize.width / 1.917,
                          decoration: BoxDecoration(
                            //color: Colors.amber.shade800,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(Dimensions.radius15),
                            ),
                          ),
                          child: Center(
                            child: SmallText(
                              text:
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                              size: Dimensions.font13,
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: Dimensions.height225,
                      top: Dimensions.height70,
                      child: Center(
                        child: Container(
                          height: Dimensions.height120 / 2.75,
                          width: screenSize.width / 3,
                          decoration: BoxDecoration(
                            //color: Colors.amber.shade800,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(Dimensions.radius15),
                            ),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()),
                              );
                            },
                            child: SmallText(
                              text: "Parent Login",
                              color: Colors.white,
                              size: Dimensions.font15,
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.buttonBgColor,
                              fixedSize: Size(
                                  Dimensions.width120, Dimensions.height20),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(Dimensions.radius50),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: Dimensions.height10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.height15),
              child: Container(
                height: Dimensions.height120,
                width: screenSize.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius15),
                    topLeft: Radius.circular(Dimensions.radius15),
                    bottomLeft: Radius.circular(Dimensions.radius15),
                    bottomRight: Radius.circular(Dimensions.radius15),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 3,
                        offset: Offset(Dimensions.blur3, Dimensions.blur3))
                  ],
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    Positioned(
                      child: Container(
                        width: screenSize.width / 1.08,
                        // ignore: prefer_const_constructors
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(Dimensions.radius15),
                            bottomRight: Radius.circular(Dimensions.radius15),
                            topLeft: Radius.circular(Dimensions.radius15),
                            bottomLeft: Radius.circular(Dimensions.radius15),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      //left: Dimensions.height157,
                      child: Container(
                        width: screenSize.width,
                        decoration: BoxDecoration(
                          //color: Colors.amber.shade800,
                          image: DecorationImage(
                              image: AssetImage('images/admission2.jpg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(Dimensions.radius15),
                            bottomRight: Radius.circular(Dimensions.radius15),
                            topLeft: Radius.circular(Dimensions.radius15),
                            bottomLeft: Radius.circular(Dimensions.radius15),
                          ),
                        ),
                        child: Center(
                          child: SmallText(
                            text: 'Teacher talk',
                            size: Dimensions.font35,
                            color: Colors.grey.shade800,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: Dimensions.height225,
                      top: Dimensions.height78,
                      child: Center(
                        child: Container(
                          height: Dimensions.height120 / 3.25,
                          width: screenSize.width / 3,
                          decoration: BoxDecoration(
                            //color: Colors.amber.shade800,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(Dimensions.radius15),
                            ),
                          ),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: SmallText(
                              text: "Join",
                              color: Colors.white,
                              size: Dimensions.font15,
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.buttonBgColor,
                              fixedSize: Size(
                                  Dimensions.width120, Dimensions.height20),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(Dimensions.radius50),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: Dimensions.height10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.height15),
              child: Container(
                height: Dimensions.height120,
                width: screenSize.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius15),
                    topLeft: Radius.circular(Dimensions.radius15),
                    bottomLeft: Radius.circular(Dimensions.radius15),
                    bottomRight: Radius.circular(Dimensions.radius15),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 3,
                        offset: Offset(Dimensions.blur3, Dimensions.blur3))
                  ],
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    Positioned(
                      child: Container(
                        width: screenSize.width / 2.5,
                        // ignore: prefer_const_constructors
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/admission1.jpg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(Dimensions.radius15),
                            bottomLeft: Radius.circular(Dimensions.radius15),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: Dimensions.height157,
                      top: -Dimensions.height25,
                      child: Container(
                        height: Dimensions.height120,
                        width: screenSize.width / 1.917,
                        decoration: BoxDecoration(
                          //color: Colors.amber.shade800,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(Dimensions.radius15),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: Dimensions.height5),
                          child: Center(
                            child: SmallText(
                              text:
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                              size: Dimensions.font13,
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: Dimensions.height225,
                      top: Dimensions.height70,
                      child: Center(
                        child: Container(
                          height: Dimensions.height120 / 2.75,
                          width: screenSize.width / 3,
                          decoration: BoxDecoration(
                            //color: Colors.amber.shade800,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(Dimensions.radius15),
                            ),
                          ),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: SmallText(
                              text: "Go Shopping",
                              color: Colors.white,
                              size: Dimensions.font15,
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.buttonBgColor,
                              fixedSize: Size(
                                  Dimensions.width120, Dimensions.height20),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(Dimensions.radius50),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: Dimensions.height10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.height15),
              child: Container(
                height: Dimensions.height120,
                width: screenSize.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius15),
                    topLeft: Radius.circular(Dimensions.radius15),
                    bottomLeft: Radius.circular(Dimensions.radius15),
                    bottomRight: Radius.circular(Dimensions.radius15),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 3,
                        offset: Offset(Dimensions.blur3, Dimensions.blur3))
                  ],
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    Positioned(
                      child: Container(
                        width: screenSize.width / 2.5,
                        // ignore: prefer_const_constructors
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/admission3.jpg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(Dimensions.radius15),
                            bottomLeft: Radius.circular(Dimensions.radius15),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: Dimensions.height157,
                      top: -Dimensions.height25,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: Dimensions.height5),
                        child: Container(
                          height: Dimensions.height120,
                          width: screenSize.width / 1.917,
                          decoration: BoxDecoration(
                            //color: Colors.amber.shade800,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(Dimensions.radius15),
                            ),
                          ),
                          child: Center(
                            child: SmallText(
                              text:
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                              size: Dimensions.font13,
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: Dimensions.height225,
                      top: Dimensions.height70,
                      child: Center(
                        child: Container(
                          height: Dimensions.height120 / 2.75,
                          width: screenSize.width / 3,
                          decoration: BoxDecoration(
                            //color: Colors.amber.shade800,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(Dimensions.radius15),
                            ),
                          ),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: SmallText(
                              text: "Learn|Have fun ",
                              color: Colors.white,
                              size: Dimensions.font13,
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.buttonBgColor,
                              fixedSize: Size(
                                  Dimensions.width120, Dimensions.height20),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(Dimensions.radius50),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: Dimensions.height10,
            ),
          ],
        ),
      ),
    );
  }
}
