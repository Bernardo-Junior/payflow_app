import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/ui/atoms/divider/divider_vertical.dart';
import 'package:payflow/ui/atoms/label_button/label_button.dart';

class SetLabelButtons extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnPressed;
  final String secundaryLabel;
  final VoidCallback secundaryOnPressed;
  final bool enablePrimaryColor;

  const SetLabelButtons({
    Key? key,
    required this.primaryLabel,
    required this.primaryOnPressed,
    required this.secundaryLabel,
    required this.secundaryOnPressed,
    this.enablePrimaryColor = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      child: Row(
        children: [
          Expanded(
            child: LabelButton(
              label: primaryLabel,
              onPressed: primaryOnPressed,
              style: enablePrimaryColor ? TextStyles.buttonPrimary : null,
            ),
          ),
          DividerVertical(),
          Expanded(
            child: LabelButton(
              label: secundaryLabel,
              onPressed: secundaryOnPressed,
            ),
          )
        ],
      ),
    );
  }
}
