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

class ExteriorPage extends StatefulWidget {
  final void Function()? onPressed;
  final String text;
  final String totalPrice;

  const ExteriorPage({
    super.key,
    this.onPressed,
    required this.text,
    required this.totalPrice,
  });

  @override
  State<ExteriorPage> createState() => _ExteriorPageState();
}

class _ExteriorPageState extends State<ExteriorPage> {
  int selected = 0;
  PageController? controller = PageController();

  final listColors = [
    "Jet Black",
    "Matte Grey",
    "Royal Blue",
    "Pearl White Multi-Coat",
    "Maroon Red",
  ];

  @override
  Widget build(BuildContext context) {
    double y = MediaQuery.of(context).size.height;
    double x = MediaQuery.of(context).size.width;

    return Scaffold(
      bottomSheet: Container(
        height: MediaQuery.of(context).size.height / 7.5,
        width: MediaQuery.of(context).size.width,
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
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Row(
          children: [
            const Spacer(flex: 1),

            /// #Price Total
            StreamWidget(textStyle: CustomFonts.performanceCost2()),

            const SizedBox(width: 53),

            /// #Elevated Button
            CustomElevatedButton(
              onPressed: () {
                widget.onPressed!();
                shoppingDetails.interiorPrice = 1000;
              },
            ),

            const Spacer(),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: y * 0.03),

            /// #Header Text Select Color
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  CustomStrings.selectColor,
                  style: CustomFonts.select(),
                ),
              ),
            ),

            SizedBox(height: y * 0.01),

            if (selected == 0)
              Image(
                image: CustomImages.blackTesla,
                width: x * 0.99,
                height: y * 0.3,
              )
                  .animate()
                  .fadeIn(begin: 0.05)
                  .shimmer(duration: const Duration(milliseconds: 800)),
            if (selected == 1)
              Image(
                image: CustomImages.greyTesla,
                width: x * 0.99,
                height: y * 0.3,
              )
                  .animate()
                  .fadeIn(begin: 0.05)
                  .shimmer(duration: const Duration(milliseconds: 805)),
            if (selected == 2)
              Image(
                image: CustomImages.blueTesla,
                width: x * 0.99,
                height: y * 0.3,
              )
                  .animate()
                  .fadeIn(begin: 0.05)
                  .shimmer(duration: const Duration(milliseconds: 810)),
            if (selected == 3)
              Image(
                image: CustomImages.whiteTesla,
                width: x * 0.89,
                height: y * 0.3,
              )
                  .animate()
                  .fadeIn(begin: 0.05)
                  .shimmer(duration: const Duration(milliseconds: 815)),
            if (selected == 4)
              Image(
                image: CustomImages.redTesla,
                width: x * 0.89,
                height: y * 0.3,
              )
                  .animate()
                  .fadeIn(begin: 0.05)
                  .shimmer(duration: const Duration(milliseconds: 820)),

            /// #Image SubText
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// #Price HeaderText
                    if (selected == 0)
                      Text(
                        listColors[0],
                        style: CustomFonts.performance(),
                      ),
                    if (selected == 1)
                      Text(
                        listColors[1],
                        style: CustomFonts.performance(),
                      ),
                    if (selected == 2)
                      Text(
                        listColors[2],
                        style: CustomFonts.performance(),
                      ),
                    if (selected == 3)
                      Text(
                        listColors[3],
                        style: CustomFonts.performance(),
                      ),
                    if (selected == 4)
                      Text(
                        listColors[4],
                        style: CustomFonts.performance(),
                      ),

                    SizedBox(height: y * 0.014),

                    /// #SubText Price 2000$
                    Text(
                      CustomStrings.price2000,
                      style: CustomFonts.performanceCost(),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: y * 0.03),

            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  gradientColor1: CustomColors.darkBlack.withOpacity(0.5),
                  gradientColor2: CustomColors.darkBlack.withOpacity(1),
                  height: 40,
                  width: 40,
                ),

                /// #Grey Icon Button
                CustomIconButton(
                  isSelected: selected == 1,
                  onPressed: () {
                    selected = 1;
                    setState(() {});
                  },
                  iconColor: CustomColors.blueGrey,
                  borderColor: CustomColors.red,
                  gradientColor1: CustomColors.blueGrey.withOpacity(0.8),
                  gradientColor2: CustomColors.blueGrey.withOpacity(1),
                  height: 40,
                  width: 40,
                ),

                /// #Blue Icon Button
                CustomIconButton(
                  isSelected: selected == 2,
                  onPressed: () {
                    selected = 2;
                    setState(() {});
                  },
                  iconColor: CustomColors.blue,
                  borderColor: CustomColors.red,
                  gradientColor1: CustomColors.blue.withOpacity(0.8),
                  gradientColor2: CustomColors.blue.withOpacity(1),
                  height: 40,
                  width: 40,
                ),

                /// #White Icon Button
                CustomIconButton(
                  isSelected: selected == 3,
                  onPressed: () {
                    selected = 3;
                    setState(() {});
                  },
                  iconColor: CustomColors.red,
                  borderColor: CustomColors.red.withOpacity(0.7),
                  gradientColor1: CustomColors.lightWhite.withOpacity(0.8),
                  gradientColor2: CustomColors.lightWhite.withOpacity(1),
                  height: 40,
                  width: 40,
                ),

                /// #Red Icon Button
                CustomIconButton(
                  isSelected: selected == 4,
                  onPressed: () {
                    selected = 4;
                    setState(() {});
                  },
                  iconColor: CustomColors.red,
                  borderColor: CustomColors.red,
                  gradientColor1: CustomColors.red.withOpacity(0.8),
                  gradientColor2: CustomColors.red.withOpacity(1),
                  height: 40,
                  width: 40,
                ),
                const Spacer(),
              ],
            ),

            const SizedBox(height: 30),

            /// #Divider
            const Divider(
              endIndent: 25,
              indent: 25,
              thickness: 1,
              color: CustomColors.dividerColor,
            ),

            const SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// #Text First Description
                    Text(
                      CustomStrings.wheels,
                      style: CustomFonts.wheels(),
                    ),

                    const SizedBox(height: 12),

                    /// #Text Second Description
                    Text(
                      CustomStrings.spoiler,
                      style: CustomFonts.wheels(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
