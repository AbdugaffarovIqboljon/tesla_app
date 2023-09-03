import 'package:flutter/material.dart';
import '../services/constants/colors.dart';
import '../services/constants/fonts.dart';

class PrimaryConfigurationTextView extends StatelessWidget {
  final String configurationText;
  final String configurationPriceText;
  final bool selectedItemIndex;
  final void Function() onPressed;

  const PrimaryConfigurationTextView({
    super.key,
    required this.configurationText,
    required this.configurationPriceText,
    required this.selectedItemIndex,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        overlayColor: MaterialStatePropertyAll(Colors.red.withOpacity(0.05)),
        shape: const MaterialStatePropertyAll(StadiumBorder()),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// #configuration text
          _ConfigurationTextView(
            text: configurationText,
            selectedItemIndex: selectedItemIndex,
          ),

          const SizedBox(height: 8),

          /// #configuration price text
          _ConfigurationPriceTextView(
            text: configurationPriceText,
            selectedItemIndex: selectedItemIndex,
          ),
        ],
      ),
    );
  }
}

class _ConfigurationPriceTextView extends StatelessWidget {
  final String text;
  final bool selectedItemIndex;

  const _ConfigurationPriceTextView({
    required this.text,
    required this.selectedItemIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: selectedItemIndex
          ? CustomFonts.configurationPriceTextStyle(CustomColors.red)
          : CustomFonts.configurationPriceTextStyle(CustomColors.lightGrey),
    );
  }
}

class _ConfigurationTextView extends StatelessWidget {
  final String text;
  final bool selectedItemIndex;

  const _ConfigurationTextView({
    required this.text,
    required this.selectedItemIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: selectedItemIndex
          ? CustomFonts.configurationPriceTextStyle(CustomColors.darkBlack)
          : CustomFonts.configurationPriceTextStyle(CustomColors.grey),
    );
  }
}
