import 'package:flutter/material.dart';

import '../services/constants/colors.dart';
import '../services/constants/fonts.dart';
import '../services/constants/strings.dart';

class CustomElevatedButton extends StatelessWidget {
  final void Function()? onPressed;

  const CustomElevatedButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        side: MaterialStateProperty.all(
          const BorderSide(
            color: CustomColors.red,
            strokeAlign: 3,
          ),
        ),
        backgroundColor: MaterialStateProperty.all(
          (CustomColors.white),
        ),
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(100),
            ),
          ),
        ),
        fixedSize: MaterialStateProperty.all(const Size(155, 40)),
      ),
      onPressed: onPressed,
      child: Text(
        CustomStrings.next,
        style: CustomFonts.next(),
      ),
    );
  }
}
