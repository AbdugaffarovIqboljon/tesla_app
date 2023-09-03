import 'package:flutter/material.dart';
import 'package:my_tesla/views/tab_bar_button.dart';

import '../pages/auto_pilot_page.dart';
import '../pages/exterior_page.dart';
import '../pages/interior_page.dart';
import '../pages/selecting_page.dart';
import '../services/constants/colors.dart';
import '../services/constants/fonts.dart';
import '../services/constants/icons.dart';
import '../services/constants/strings.dart';

class CustomPageView extends StatefulWidget {
  const CustomPageView({Key? key}) : super(key: key);

  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {
  final PageController controller = PageController();

  int selectedIndex = 0;
  int lastPage = 0;
  String totalPrice = '\$55,700'; // Initialize totalPrice here

  final TextStyle style = CustomFonts.tapBar();

  final tapBarButtons = [
    CustomStrings.car1,
    CustomStrings.exterior2,
    CustomStrings.interior3,
    CustomStrings.autoPilot4,
  ];

  void onTapTab(int i) {
    if (i <= lastPage) {
      selectedIndex = i;
      setState(() {});
      controller.jumpToPage(i);
    }
  }

  void onPressButton(int i) {
    setState(() {
      selectedIndex = i;
      lastPage = lastPage < i ? i : lastPage;
    });
    controller.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    double x = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          icon: const Icon(
            Icons.arrow_back,
            color: CustomColors.grey,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Image(
          image: CustomIcons.teslaAppBar,
          height: 18.55,
          width: 112,
          color: CustomColors.lightBlack,
        ),
        backgroundColor: CustomColors.white,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size(x, 45),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (int i = 0; i < tapBarButtons.length; i++)
                  TabBarButton(
                    onPressed: () => onTapTab(i),
                    text: tapBarButtons[i],
                    i: i,
                    selectedIndex: selectedIndex,
                    lastPage: lastPage,
                  ),
              ],
            ),
          ),
        ),
      ),
      body: PageView(
        controller: controller,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          SelectingPage(
            text: tapBarButtons[0],
            onPressed: () => onPressButton(1),
          ),
          ExteriorPage(
            text: tapBarButtons[1],
            onPressed: () => onPressButton(2),
            totalPrice: totalPrice,
          ),
          InteriorPage(
            text: tapBarButtons[2],
            onPressed: () => onPressButton(3),
          ),
          AutoPilotPage(
            text: tapBarButtons[3],
            onPressed: () => onPressButton(4),
          ),
        ],
      ),
    );
  }
}
