import 'package:flutter/material.dart';

import '../services/constants/colors.dart';
import '../services/constants/fonts.dart';
import '../services/constants/images.dart';
import '../services/constants/strings.dart';

class HomePageModelRoadster extends StatefulWidget {
  const HomePageModelRoadster({super.key});

  @override
  State<HomePageModelRoadster> createState() => _HomePageModelRoadsterState();
}

class _HomePageModelRoadsterState extends State<HomePageModelRoadster>
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
          /// #Header Image Tesla Roadster
          const Center(
            child: Image(
              image: CustomImages.teslaModelRoadster,
            ),
          ),

          const Spacer(flex: 12),

          Row(
            children: [
              const Spacer(flex: 2),
              Column(
                children: [
                  /// #Header Text Range 620 mi
                  Text(
                    CustomStrings.range620mi,
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
                width: 0.45,
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
          const Spacer(flex: 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// #Text Acceleration
              Text(
                CustomStrings.acceleration,
                style: CustomFonts.acceleration1(),
              ),

              /// #0-60mph Text Acceleration
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
              /// #Text Top Speed
              Text(
                CustomStrings.topSpeed,
                style: CustomFonts.acceleration1(),
              ),

              /// #Text up to 250mph
              Text(
                CustomStrings.topSpeedMainModelRoadster,
                style: CustomFonts.acceleration2(),
              ),
            ],
          ),
          const Spacer(flex: 4),
        ],
      ),
    );
  }
}
