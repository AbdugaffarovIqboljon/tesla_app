import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:my_tesla/pages/selecting_page.dart';
import 'package:my_tesla/pages/summary_page.dart';

import '../config/service_locator.dart';
import '../services/constants/colors.dart';
import '../services/constants/fonts.dart';
import '../services/constants/images.dart';
import '../services/constants/strings.dart';
import '../views/custom_elevated_button.dart';
import '../views/primary_configuration.dart';

class AutoPilotPage extends StatefulWidget {
  final void Function()? onPressed;
  final String text;

  const AutoPilotPage({super.key, this.onPressed, required this.text});

  @override
  State<AutoPilotPage> createState() => _AutoPilotPageState();
}

class _AutoPilotPageState extends State<AutoPilotPage> {
  bool firstSelectedItem = true;
  bool secondSelectedItem = false;

  @override
  Widget build(BuildContext context) {
    void navigateToSummaryPage() {
      shoppingDetails.autopilotPrice;
      shoppingDetails.reload();
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SummaryPage(),
        ),
      );
    }

    double y = MediaQuery.of(context).size.height;
    double x = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: CustomColors.lightGrey,
      body: Stack(
        children: [
          /// #Image AutoPilot
          Image(
            fit: BoxFit.cover,
            image: CustomImages.autoPilot,
            width: MediaQuery.of(context).size.width,
            height: y * 0.7,
          ).animate().addEffect(const MoveEffect(duration: Duration(seconds: 2))),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: y / 2.6,
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
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    const SizedBox(height: 38),

                    /// #HeaderText AutoPilot
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        CustomStrings.autoPilot,
                        style: CustomFonts.select(),
                      ),
                    ),

                    const Spacer(),

                    Row(
                      children: [
                        /// #SubText Full Self Driving
                        PrimaryConfigurationTextView(
                          configurationText: CustomStrings.fullSelfDriving,
                          configurationPriceText: CustomStrings.dollar2,
                          selectedItemIndex: firstSelectedItem,
                          onPressed: () {
                            firstSelectedItem = true;
                            secondSelectedItem = false;
                            shoppingDetails.autopilotPrice = 5000;
                            shoppingDetails.reload();
                            setState(() {});
                          },
                        ),

                        SizedBox(width: x * 0.1),

                        /// #SubText Long Range
                        PrimaryConfigurationTextView(
                          configurationText: CustomStrings.longRange,
                          configurationPriceText: CustomStrings.dollar3,
                          selectedItemIndex: secondSelectedItem,
                          onPressed: () {
                            firstSelectedItem = false;
                            secondSelectedItem = true;
                            shoppingDetails.autopilotPrice = 3000;
                            shoppingDetails.reload();
                            setState(() {});
                          },
                        ),
                      ],
                    ),

                    const Spacer(flex: 1),

                    /// #SubText Information
                    Text(
                      CustomStrings.informationAutoPilotScreen,
                      style: CustomFonts.information(),
                    ),

                    const Spacer(flex: 1),

                    Row(
                      children: [
                        const Spacer(flex: 2),

                        /// #SubText Total Price
                        StreamWidget(textStyle: CustomFonts.performanceCost2()),

                        SizedBox(width: x * 0.2),

                        /// #Elevated Button
                        CustomElevatedButton(
                          onPressed: () {
                            navigateToSummaryPage();
                          },
                        ),

                        const Spacer(flex: 2),
                      ],
                    ),
                    const Spacer(),
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
