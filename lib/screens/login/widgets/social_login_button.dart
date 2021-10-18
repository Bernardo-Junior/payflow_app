import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';

class SocialLoginButton extends StatelessWidget {
  Future<void> Function() onTap;
  SocialLoginButton({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraints) {
        return Padding(
          padding: EdgeInsets.only(
            top: constraints.maxHeight * 0.3,
            bottom: constraints.maxHeight * 0.3,
          ),
          child: InkWell(
            onTap: onTap,
            child: Container(
              decoration: BoxDecoration(
                border: Border.fromBorderSide(
                  BorderSide(
                    color: AppColors.stroke,
                  ),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      AppImages.google,
                      height: constraints.maxHeight * 0.2,
                    ),
                  ),
                  Container(
                    height: constraints.maxHeight,
                    width: 1,
                    color: AppColors.stroke,
                  ),
                  Expanded(
                    flex: 4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Entrar com Google",
                          style: TextStyles.buttonGray,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
