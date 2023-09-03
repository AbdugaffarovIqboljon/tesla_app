import 'package:flutter/material.dart';
import 'package:my_tesla/pages/selecting_page.dart';
import 'package:my_tesla/pages/user_cart_page.dart';


import '../services/constants/colors.dart';
import '../services/constants/fonts.dart';
import '../services/constants/icons.dart';
import '../services/constants/images.dart';
import '../services/constants/strings.dart';
import '../views/button.dart';

class SummaryPage extends StatefulWidget {
  const SummaryPage({super.key});

  @override
  State<SummaryPage> createState() => _SummaryPageState();
}

class _SummaryPageState extends State<SummaryPage> {
  @override
  Widget build(BuildContext context) {
    double y = MediaQuery.of(context).size.height;
    double x = MediaQuery.of(context).size.width;

    void showAlertDialog(BuildContext context) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          Future.delayed(
            const Duration(seconds: 1),
            () {
              Navigator.of(context).pop();
            },
          );

          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Container(
              width: double.infinity,
              height: 60.0,
              padding: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 12,
              ),
              child: const Center(
                child: Text(
                  CustomStrings.successAlertDialog,
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
          );
        },
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          /// #Header View Image
          Image(
            image: CustomImages.lastPageRedTesla,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),

          Align(
            alignment: const Alignment(0.86, -0.872),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ShoppingCartPage(),
                  ),
                );
              },
              color: CustomColors.white,
              icon: const Icon(Icons.shopping_cart_checkout),
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: y / 2.45,
              width: x,
              decoration: BoxDecoration(
                color: CustomColors.darkBlack,
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
              child: Column(
                children: [
                  const Spacer(flex: 2),

                  /// #HeaderText Summary
                  Text(
                    CustomStrings.summary,
                    style: CustomFonts.select(),
                  ),

                  const Spacer(flex: 2),

                  /// #SubText Your Model Y
                  Text(
                    CustomStrings.yourPurchase,
                    style: CustomFonts.modelY(),
                  ),

                  const Spacer(),

                  /// #Price
                  StreamWidget(
                    textStyle: CustomFonts.configurationPriceTextStyle(
                      CustomColors.white,
                    ),
                  ),

                  const Spacer(flex: 2),

                  /// #Elevated Button Pay

                  Button(
                    height: 54,
                    width: x * 0.7,
                    onPressed: () {
                      showAlertDialog(context);
                    },
                    text: CustomStrings.addToCart,
                    borderColor: CustomColors.red,
                    buttonColor: CustomColors.darkBlack,
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),

          /// #AppBar Text Tesla
          const SafeArea(
            child: Align(
              alignment: Alignment(0, -0.95),
              child: Image(
                image: CustomIcons.teslaAppBar,
                width: 100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
