import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/tools/border.dart';
import 'package:flutter_travel_ui/tools/colors.dart';

import '../tools/styles.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
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
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.05,
              vertical: height * 0.02,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: getBorderRadiusWidget(context, 1),
                          child: Image.asset(
                            'model1.jpg',
                            width: width * 0.12,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: width * 0.02),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Hello',
                              style: textStyle6,
                            ),
                            Text(
                              'Ellen',
                              style: textStyle4,
                            ),
                          ],
                        )
                      ],
                    ),
                    Icon(
                      Icons.notifications_none_outlined,
                      size: width * 0.07,
                    ),
                  ],
                ),
                SizedBox(height: height * 0.02),
                const Text(
                  'what is your\nbest place to go?',
                  style: textStyle3,
                ),
                SizedBox(height: height * 0.03),
                Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Container(
                        height: height * 0.06,
                        padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: getBorderRadiusWidget(context, 0.04),
                          boxShadow: const [
                            BoxShadow(
                              color: greyColor,
                              blurRadius: 2,
                              offset: Offset(2, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            const Icon(Icons.search),
                            SizedBox(width: width * 0.02),
                            const Text(
                              'Search for place',
                              style: textStyle8,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: width * 0.03),
                    Expanded(
                      child: Container(
                        height: height * 0.06,
                        decoration: BoxDecoration(
                          color: brownColor,
                          borderRadius: getBorderRadiusWidget(context, 0.04),
                        ),
                        child:
                            const Icon(Icons.menu_rounded, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.02),
                const Text(
                  'Categories',
                  style: textStyle3,
                ),
                SizedBox(height: height * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: height * 0.03),
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 0.04,
                        vertical: height * 0.008,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: getBorderRadiusWidget(context, 0.1),
                        boxShadow: const [
                          BoxShadow(
                            color: greyColor,
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      child: const Text(
                        'Cafes',
                        style: textStyle5,
                      ),
                    ),
                    const Text(
                      'Restaurant\'s',
                      style: textStyle8,
                    ),
                    const Text(
                      'Library\'s',
                      style: textStyle8,
                    ),
                    const Text(
                      'Hotels\'s',
                      style: textStyle8,
                    ),
                  ],
                ),
                SizedBox(height: height * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Popular',
                      style: textStyle2,
                    ),
                    Text(
                      'View all',
                      style: textStyle7,
                    ),
                  ],
                ),
                SizedBox(height: height * 0.03),
                Container(
                  padding: EdgeInsets.all(width*0.025),
                  decoration: BoxDecoration(
                    borderRadius: getBorderRadiusWidget(context, 0.07),
                    color: Colors.white,
                    boxShadow:  [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        blurRadius: 5,
                        offset: const Offset(2, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: getBorderRadiusWidget(context, 0.07),
                        child: Image.asset(
                          'italy.jpg',
                          width: width,
                          height: height * 0.21,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: width*0.01),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Salerno',
                                  style: textStyle3,
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.location_on,
                                      color: greyColor,
                                    ),
                                    Text(
                                      'Italy',
                                      style: textStyle7,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          PeopleWidget(width: width),
                          
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PeopleWidget extends StatelessWidget {
  const PeopleWidget({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: getBorderRadiusWidget(context, 1),
          child: Image.asset(
            'model2.jpg',
            width: width * 0.12,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: width * 0.05),
          child: ClipRRect(
            borderRadius: getBorderRadiusWidget(context, 1),
            child: Image.asset(
              'model3.jpg',
              width: width * 0.12,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: width * 0.12),
          child: ClipRRect(
            borderRadius: getBorderRadiusWidget(context, 1),
            child: Image.asset(
              'model4.jpg',
              width: width * 0.12,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: width * 0.2),
          child: ClipRRect(
            borderRadius: getBorderRadiusWidget(context, 1),
            child: Image.asset(
              'model1.jpg',
              width: width * 0.12,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: width * 0.25),
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: width * 0.03, vertical: width * 0.04),
            decoration: BoxDecoration(
              borderRadius: getBorderRadiusWidget(context, 1),
              color: navColor,
            ),
            child: const Text(
              '+10',
              style: textStyle12,
            ),
          ),
        ),
      ],
    );
  }
}
