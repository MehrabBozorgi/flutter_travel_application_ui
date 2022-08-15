import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/screens/first_screen.dart';
import 'package:flutter_travel_ui/tools/border.dart';
import 'package:flutter_travel_ui/tools/colors.dart';

import '../tools/styles.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      color: brownColor,
      child: SafeArea(
        child: Scaffold(
          body: Container(
            width: width,
            height: height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  backGroundColor1,
                  greyColor,
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(width * 0.03),
                  child: ClipRRect(
                    borderRadius: getBorderRadiusWidget(context, 0.07),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          'italy.jpg',
                          width: width,
                          height: height * 0.45,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          right: width * 0.05,
                          top: height * 0.02,
                          child: Container(
                            padding: EdgeInsets.all(width * 0.02),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: getBorderRadiusWidget(context, 1),
                            ),
                            child: const Icon(
                              Icons.favorite_border_rounded,
                              color: greyColor2,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: height * 0.02,
                          child: Container(
                            alignment: Alignment.center,
                            width: width * 0.9,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Salerno',
                                      style: textStyle9,
                                    ),
                                    Row(
                                      children: const [
                                        Icon(
                                          Icons.location_on,
                                          color: greyColor,
                                        ),
                                        Text(
                                          'Italy',
                                          style: textStyle11,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                PeopleWidget(width: width),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: height * 0.02),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                  child: const Text(
                    'About',
                    style: textStyle3,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.04,
                    vertical: height * 0.02,
                  ),
                  child: const Text(
                    'Salano is an cafe providers all types of drinks and some snack',
                    style: textStyle8,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.04,
                    vertical: height * 0.02,
                  ),
                  child: const Text(
                    'Best of Salano',
                    style: textStyle4,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: getBorderRadiusWidget(context, 0.04),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: greyColor,
                              blurRadius: 5,
                              offset: Offset(2, 2),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: getBorderRadiusWidget(context, 0.04),
                              child: Image.asset(
                                'espresso.jpg',
                                width: width * 0.4,
                                height: height * 0.12,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Text(
                              'Espresso',
                              style: textStyle5,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: width * 0.03),
                        decoration: BoxDecoration(
                          borderRadius: getBorderRadiusWidget(context, 0.04),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: greyColor,
                              blurRadius: 5,
                              offset: Offset(2, 2),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: getBorderRadiusWidget(context, 0.04),
                              child: Image.asset(
                                'icecoffee.jpg',
                                width: width * 0.4,
                                height: height * 0.12,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Text(
                              'Ice coffee',
                              style: textStyle5,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: width * 0.03),
                        decoration: BoxDecoration(
                          borderRadius: getBorderRadiusWidget(context, 0.04),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: greyColor,
                              blurRadius: 5,
                              offset: Offset(2, 2),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: getBorderRadiusWidget(context, 0.04),
                              child: Image.asset(
                                'latte.jpg',
                                width: width * 0.4,
                                height: height * 0.12,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Text(
                              'Latte',
                              style: textStyle5,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.05),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.04,
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: navColor,
                      shape: getShapeWidget(context, 0.08),
                      padding: EdgeInsets.symmetric(vertical: height * 0.02),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Location',
                          style: textStyle10,
                        ),
                        SizedBox(width: width * 0.02),
                        const Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
