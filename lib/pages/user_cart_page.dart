import 'package:flutter/material.dart';

import '../config/service_locator.dart';
import '../services/constants/colors.dart';
import '../services/constants/fonts.dart';
import '../services/constants/strings.dart';
import '../views/button.dart';

class ShoppingCartPage extends StatefulWidget {
  const ShoppingCartPage({Key? key}) : super(key: key);

  @override
  State<ShoppingCartPage> createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  int counter = 0;
  bool isPressed = false;

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final totalPrice = shoppingDetails.autopilotPrice +
        shoppingDetails.carPrice +
        shoppingDetails.interiorPrice +
        shoppingDetails.exteriorPrice;

    double discountedPrice = totalPrice * 0.7;

    double y = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustomColors.deepBlueCartPage,
        title: const Text(CustomStrings.yourCart),
        centerTitle: true,
      ),
      backgroundColor: CustomColors.deepBlueCartPage,
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// #AppBar

            SizedBox(height: y * 0.06),

            /// #TextField
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                clipBehavior: Clip.antiAlias,
                width: double.infinity,
                height: 44,
                decoration: ShapeDecoration(
                  color: CustomColors.darkBlueGrey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: TextField(
                  clipBehavior: Clip.antiAlias,
                  controller: controller,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: CustomColors.white,
                  ),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: CustomStrings.promoCode,
                    hintStyle: TextStyle(
                      color: CustomColors.white,
                      fontWeight: FontWeight.w300,
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            /// #SubText TextField
            Text(
              CustomStrings.allInfo,
              style: TextStyle(
                color: CustomColors.white.withOpacity(0.6000000238418579),
                fontSize: 15,
                fontFamily: CustomFonts.gotham,
                fontWeight: FontWeight.w400,
                letterSpacing: -0.30,
              ),
            ),

            const SizedBox(height: 15),

            /// #FirstSubText
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    CustomStrings.subtotal,
                    style: TextStyle(
                      color: CustomColors.white.withOpacity(0.8700000047683716),
                      fontSize: 15,
                      fontFamily: CustomFonts.gotham,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.30,
                    ),
                  ),
                  Text(
                    isPressed == true && controller.text == "Iqboljon"
                        ? "\$$totalPrice"
                        : "",
                    style: TextStyle(
                      color: CustomColors.white.withOpacity(0.8700000047683716),
                      fontSize: 15,
                      fontFamily: CustomFonts.gotham,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.30,
                    ),
                  ),
                ],
              ),
            ),

            /// #Second SubText
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    CustomStrings.deliveryFee,
                    style: TextStyle(
                      color: CustomColors.white.withOpacity(0.8700000047683716),
                      fontSize: 15,
                      fontFamily: CustomFonts.gotham,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.30,
                    ),
                  ),
                  Text(
                    isPressed == true && controller.text == "Iqboljon"
                        ? r"$0"
                        : "",
                    style: TextStyle(
                      color: CustomColors.white.withOpacity(0.8700000047683716),
                      fontSize: 15,
                      fontFamily: CustomFonts.gotham,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.30,
                    ),
                  ),
                ],
              ),
            ),

            /// #Third SubText
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    CustomStrings.discount,
                    style: TextStyle(
                      color: CustomColors.white.withOpacity(0.8700000047683716),
                      fontSize: 15,
                      fontFamily: CustomFonts.gotham,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.30,
                    ),
                  ),
                  Text(
                    isPressed == true && controller.text == "Iqboljon"
                        ? "35%" //35% Skidka
                        : "", //
                    style: TextStyle(
                      color: CustomColors.white.withOpacity(0.8700000047683716),
                      fontSize: 15,
                      fontFamily: CustomFonts.gotham,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.30,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 18),

            /// #Total Price Text
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    CustomStrings.total,
                    style: TextStyle(
                      color: CustomColors.white.withOpacity(0.8700000047683716),
                      fontSize: 15,
                      fontFamily: CustomFonts.gotham,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.30,
                    ),
                  ),
                  Text(
                    isPressed == true && controller.text == "Iqboljon"
                        ? "\$$discountedPrice" //35% Skidka
                        : "\$$totalPrice", // total Price
                    style: const TextStyle(
                      color: CustomColors.lightBlue,
                      fontSize: 17,
                      fontFamily: CustomFonts.gotham,
                      fontWeight: FontWeight.w700,
                      letterSpacing: -0.30,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),

            /// #Checkout Button
            Align(
              alignment: const Alignment(-0.92, 0),
              child: Container(
                width: 174,
                height: 44,
                decoration: ShapeDecoration(
                  color: CustomColors.darkBlueGrey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GestureDetector(
                    onTap: () {
                      isPressed = !isPressed;
                      setState(() {});
                    },
                    child: isPressed == false
                        ? Row(
                            children: [
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: CustomColors.white.withOpacity(0.85),
                              ),
                              const SizedBox(width: 20),
                              Text(
                                CustomStrings.checkout,
                                style: TextStyle(
                                  color: CustomColors.white
                                      .withOpacity(0.6000000238418579),
                                  fontSize: 15,
                                  fontFamily: CustomFonts.gotham,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: -0.08,
                                ),
                              ),
                            ],
                          )
                        : Align(
                            alignment: const Alignment(0.85, 0),
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: CustomColors.white.withOpacity(0.8),
                            ),
                          ),
                  ),
                ),
              ),
            ),
            SizedBox(height: y * 0.32),
            Button(
              height: 50,
              width: 300,
              borderColor: CustomColors.cyanLightAccent,
              buttonColor: CustomColors.darkBlack,
              onPressed: () {},
              text: CustomStrings.payNow,
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
