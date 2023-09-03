import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:my_tesla/pages/selecting_page.dart';

import '../config/service_locator.dart';
import '../services/constants/colors.dart';
import '../services/constants/fonts.dart';
import '../services/constants/images.dart';
import '../services/constants/strings.dart';
import '../views/custom_elevated_button.dart';
import '../views/custom_icon_button_view.dart';
import 'auto_pilot_page.dart';

class InteriorPage extends StatefulWidget {
  final void Function()? onPressed;
  final String text;

  const InteriorPage({super.key, this.onPressed, required this.text});

  @override
  State<InteriorPage> createState() => _InteriorPageState();
}

class _InteriorPageState extends State<InteriorPage> {
  int selected = 0;

  void navigateToAutoPilotScreen() {
    shoppingDetails.autopilotPrice = 5000;
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => AutoPilotPage(text: widget.text)),
    );
  }

  @override
  Widget build(BuildContext context) {
    double y = MediaQuery.of(context).size.height;
    double x = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: CustomColors.lightGrey,
      body: Stack(
        children: [
          /// #Black Interior
          if (selected == 0)
            Image(
              fit: BoxFit.cover,
              image: CustomImages.blackTeslaInterior,
              width: MediaQuery.of(context).size.width,
              height: x * 1.3,
            ).animate().flipH(
                  duration: const Duration(milliseconds: 1000),
                  curve: const FlippedCurve(Curves.easeInBack),
                ),

          /// #White Interior
          if (selected == 1)
            Image(
              fit: BoxFit.cover,
              image: CustomImages.whiteTeslaInterior,
              width: MediaQuery.of(context).size.width,
              height: x * 1.3,
            ).animate().flipH(
                  duration: const Duration(milliseconds: 1005),
                  curve: const FlippedCurve(Curves.easeInBack),
                ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: y / 2.9,
              width: x,
              decoration: BoxDecoration(
                color: CustomColors.white,
                boxShadow: [
                  BoxShadow(
                    color: const Color(0XFF41648F).withOpacity(0.3),
                    blurRadius: 8,
                    blurStyle: BlurStyle.normal,
                    offset: const Offset(0, 0),
                  ),
                ],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    const SizedBox(height: 25),

                    /// #Text Select Interior
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        CustomStrings.selectInterior,
                        style: CustomFonts.select(),
                      ),
                    ),

                    const SizedBox(height: 20),

                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /// #Black And White
                            Text(
                              CustomStrings.blackAndWhite,
                              style: CustomFonts.performance(),
                            ),

                            const SizedBox(height: 10),

                            /// #Text 1000$
                            Text(
                              CustomStrings.thousandDollar,
                              style: CustomFonts.performanceCost(),
                            ),
                          ],
                        ),
                        const SizedBox(width: 45),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /// #Text All Black
                            Text(
                              CustomStrings.allBlack,
                              style: CustomFonts.longRange(),
                            ),

                            const SizedBox(height: 12),

                            /// #Text Included
                            Text(
                              CustomStrings.included,
                              style: CustomFonts.longRangeCost(),
                            ),
                          ],
                        ),
                      ],
                    ),

                    /// #Sub Buttons
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          /// #Black Icon Button
                          CustomIconButton(
                            isSelected: selected == 0,
                            onPressed: () {
                              selected = 0;
                              setState(() {});
                            },
                            iconColor: CustomColors.darkBlack.withOpacity(1),
                            borderColor: CustomColors.red,
                            gradientColor1:
                                CustomColors.darkBlack.withOpacity(0.5),
                            gradientColor2:
                                CustomColors.darkBlueGrey.withOpacity(1),
                            height: 50,
                            width: 50,
                          ),

                          const SizedBox(width: 15),

                          /// #White Icon Button
                          CustomIconButton(
                            isSelected: selected == 1,
                            onPressed: () {
                              selected = 1;
                              setState(() {});
                            },
                            iconColor: CustomColors.red,
                            borderColor: CustomColors.red.withOpacity(0.7),
                            gradientColor1: CustomColors.grey.withOpacity(0.1),
                            gradientColor2: CustomColors.grey.withOpacity(0.01),
                            height: 50,
                            width: 50,
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                        vertical: 25.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          /// #SubText Price
                          StreamWidget(
                            textStyle: CustomFonts.performanceCost2(),
                          ),

                          /// #Elevated Button Next
                          CustomElevatedButton(
                            onPressed: () {
                              navigateToAutoPilotScreen();
                              shoppingDetails.interiorPrice = 1000;
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
