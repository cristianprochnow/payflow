import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/themes/appcolors.dart';
import 'package:payflow/shared/widgets/social_login/social_login_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.32,
              color: AppColors.primary,
            ),
            Positioned(
                top: size.height * 0.08,
                right: 0,
                left: 0,
                child: Image.asset(
                  AppImages.person,
                  width: 208,
                  height: 332,
                )),
            Positioned(
                bottom: size.height * 0.04,
                left: 0,
                right: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.logoMini),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 24, right: 72, left: 72, bottom: 12),
                      child: Text(
                        'Organize seus boletos em um só lugar',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.titleHome,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 24, right: 24, left: 24),
                      child: SocialLoginButton(
                        onTap: () {
                          print('clicou show');
                        },
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
