import 'package:flutter/material.dart';
import 'package:my_tesla/views/tap_bar_view.dart';


import '../pages/home_page_model_roadster.dart';
import '../pages/home_page_model_s.dart';
import '../pages/home_page_model_y.dart';
import '../services/constants/colors.dart';
import '../services/constants/fonts.dart';
import '../services/constants/icons.dart';
import '../services/constants/strings.dart';
import 'button.dart';

class FirstPageView extends StatefulWidget {
  const FirstPageView({super.key});

  @override
  State<FirstPageView> createState() => _FirstPageViewState();
}

class _FirstPageViewState extends State<FirstPageView>
    with TickerProviderStateMixin {
  late TabController myController;

  @override
  void initState() {
    myController = TabController(length: 3, vsync: this);
    super.initState();
  }

  int selectedIndex = 0;

  void navigateToCustomPageView() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const CustomPageView(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double y = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: CustomColors.darkBlack,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 55,
            vertical: 25,
          ),
          child: Button(
            onPressed: navigateToCustomPageView,
            height: 55,
            width: 100,
            borderColor: CustomColors.red,
            buttonColor: CustomColors.darkBlack,
            text: CustomStrings.orderNow,
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        shadowColor: CustomColors.darkBlack,
        toolbarHeight: 120,
        centerTitle: true,
        primary: false,
        backgroundColor: CustomColors.darkBlack,
        title: Padding(
          padding: EdgeInsets.only(top: y * 0.09),
          child: Image(
            image: CustomIcons.teslaAppBar,
            height: 18.55,
            width: 112,
            color: CustomColors.lightBlack,
          ),
        ),
        bottom: TabBar(
          physics: const NeverScrollableScrollPhysics(),
          isScrollable: true,
          onTap: (index) {
            selectedIndex = index;

            setState(() {});
            myController.animateTo(
              index,
              duration: const Duration(seconds: 600),
              curve: Curves.linear,
            );
          },
          indicatorColor: CustomColors.transparent,
          overlayColor: MaterialStateProperty.all(CustomColors.transparent),
          controller: myController,
          padding: const EdgeInsetsDirectional.only(start: 5, end: 8),
          tabs: [
            Tab(
              icon: Text(
                CustomStrings.modelS,
                style: selectedIndex == 0
                    ? CustomFonts.modelY2()
                    : CustomFonts.modelYtab(),
              ),
            ),
            Tab(
              icon: Text(
                CustomStrings.modelY,
                style: selectedIndex == 1
                    ? CustomFonts.modelY2()
                    : CustomFonts.modelYtab(),
              ),
            ),
            Tab(
              icon: Text(
                CustomStrings.modelRoadster,
                style: selectedIndex == 2
                    ? CustomFonts.modelY2()
                    : CustomFonts.modelYtab(),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: myController,
        children: const [
          HomePageModelS(),
          HomePageModelY(),
          HomePageModelRoadster(),
        ],
      ),
    );
  }
}
