import 'package:flutter/material.dart';
import 'package:payflow/screens/login/login_controller.dart';
import 'package:payflow/screens/login/widgets/social_login_button.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LoginController controller = LoginController();
    final avaliableHeight = MediaQuery.of(context).size.height;
    final avaliableWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: avaliableWidth,
        height: avaliableHeight,
        child: Stack(
          children: [
            Container(
              width: avaliableWidth,
              height: avaliableHeight * 0.35,
              color: AppColors.primary,
            ),
            Positioned(
              top: avaliableHeight * 0.07,
              left: 0,
              right: 0,
              child: Container(
                width: avaliableWidth * 0.3,
                height: avaliableHeight * 0.4,
                child: Image.asset(
                  AppImages.person,
                ),
              ),
            ),
            Positioned(
              top: avaliableHeight * 0.48,
              left: 0,
              right: 0,
              child: Container(
                width: avaliableWidth,
                height: avaliableHeight * 0.52,
                child: LayoutBuilder(
                  builder: (ctx, constraints) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: constraints.maxHeight * 0.05,
                        ),
                        Container(
                          width: constraints.maxWidth * 0.3,
                          height: constraints.maxHeight * 0.2,
                          child: Image.asset(
                            AppImages.logomini,
                          ),
                        ),
                        SizedBox(
                          height: constraints.maxHeight * 0.05,
                        ),
                        Container(
                          width: constraints.maxWidth * 0.7,
                          height: constraints.maxHeight * 0.3,
                          child: Text(
                            'Organize seus boletos em um só lugar',
                            style: TextStyles.titleHome,
                            textAlign: TextAlign.center,
                            softWrap: true,
                            overflow: TextOverflow.visible,
                          ),
                        ),
                        Container(
                          width: constraints.maxWidth * 0.8,
                          height: constraints.maxHeight * 0.4,
                          child: SocialLoginButton(
                            onTap: () => controller.googleSignin(context),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
