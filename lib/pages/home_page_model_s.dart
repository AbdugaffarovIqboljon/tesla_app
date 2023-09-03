import 'package:flutter/material.dart';

import '../services/constants/colors.dart';
import '../services/constants/fonts.dart';
import '../services/constants/images.dart';
import '../services/constants/strings.dart';

class HomePageModelS extends StatefulWidget {
  const HomePageModelS({super.key});

  @override
  State<HomePageModelS> createState() => _HomePageModelSState();
}

class _HomePageModelSState extends State<HomePageModelS>
    with TickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.darkBlack,
      body: Column(
        children: [
          /// #Image Tesla Model S
          Center(
            child: Transform.scale(
              scaleX: 1.8,
              scaleY: 1.8,
              child: const Image(
                image: CustomImages.teslaModelS,
              ),
            ),
          ),

          const Spacer(flex: 12),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(flex: 2),
              Column(
                children: [
                  /// #Header Text 348mi
                  Text(
                    CustomStrings.range348mi,
                    style: CustomFonts.range(),
                  ),

                  const SizedBox(height: 8),

                  /// #SubText Range
                  Text(
                    CustomStrings.rangeSub,
                    style: CustomFonts.rangeSub(),
                  ),
                ],
              ),
              const Spacer(),

              /// #Divider
              Container(
                width: 0.4,
                height: 57,
                color: CustomColors.white,
              ),

              const Spacer(),

              Column(
                children: [
                  /// #Header Text AWD
                  Text(
                    CustomStrings.awd,
                    style: CustomFonts.range(),
                  ),

                  const SizedBox(height: 8),

                  /// #SubText Dual Motor
                  Text(
                    CustomStrings.dualMotor,
                    style: CustomFonts.rangeSub(),
                  ),
                ],
              ),
              const Spacer(flex: 2),
            ],
          ),
          const Spacer(flex: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// #Text Acceleration
              Text(
                CustomStrings.acceleration,
                style: CustomFonts.acceleration1(),
              ),

              /// #Text 0-60mph
              Text(
                CustomStrings.accelerationModelS,
                style: CustomFonts.acceleration2(),
              ),
            ],
          ),
          const Spacer(flex: 1),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// #Top Speed
              Text(
                CustomStrings.topSpeed,
                style: CustomFonts.acceleration1(),
              ),

              /// #Speed 150mph
              Text(
                CustomStrings.modelSTopSpeed,
                style: CustomFonts.acceleration2(),
              )
            ],
          ),
          const Spacer(flex: 4),
        ],
      ),
    );
  }
}
