import 'package:flutter/material.dart';

import '../services/constants/fonts.dart';

class Button extends StatelessWidget {
  final String text;
  final double height;
  final double width;
  final Color borderColor;
  final Color buttonColor;
  final void Function()? onPressed;

  const Button({
    super.key,
    required this.height,
    required this.width,
    required this.borderColor,
    required this.buttonColor,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        side: MaterialStateProperty.all(
          BorderSide(color: borderColor, width: 1.5),
        ),
        backgroundColor: MaterialStateProperty.all(
          (buttonColor),
        ),
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
          ),
        ),
        fixedSize: MaterialStateProperty.all(
          Size(width, height),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: CustomFonts.orderNow(),
      ),
    );
  }
}
