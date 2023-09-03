import 'package:flutter/material.dart';

import '../services/constants/colors.dart';
import '../services/constants/fonts.dart';
import '../services/constants/images.dart';
import '../services/constants/strings.dart';

class HomePageModelY extends StatefulWidget {
  const HomePageModelY({super.key});

  @override
  State<HomePageModelY> createState() => _HomePageModelYState();
}

class _HomePageModelYState extends State<HomePageModelY>
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
          /// #Image Model Y
          Center(
            child: Transform.scale(
              scaleX: 1,
              scaleY: 1,
              child: const Image(image: CustomImages.teslaHomePage),
            ),
          ),

          Row(
            children: [
              const Spacer(flex: 2),

              Column(
                children: [
                  /// #Header Text 300mi
                  Text(
                    CustomStrings.range300mi,
                    style: CustomFonts.range(),
                  ),

                  const SizedBox(height: 8),

                  /// #Text Range Sub
                  Text(
                    CustomStrings.rangeSub,
                    style: CustomFonts.rangeSub(),
                  ),
                ],
              ),

              const Spacer(),

              /// #Divider between Rows
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
              /// #Acceleration
              Text(
                CustomStrings.acceleration,
                style: CustomFonts.acceleration1(),
              ),

              /// #Text 0-60 mph in 3.5s
              Text(
                CustomStrings.accelerationModelY,
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

              /// #Text up to 150 mph
              Text(
                CustomStrings.modelYTopSpeed,
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
