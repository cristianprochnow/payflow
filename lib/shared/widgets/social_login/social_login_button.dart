import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/themes/appcolors.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({Key? key, required this.onTap}) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.shape,
            borderRadius: BorderRadius.circular(8),
            border: Border.fromBorderSide(BorderSide(color: AppColors.stroke))),
        height: 56,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                  child: Image.asset(AppImages.google),
                  decoration: BoxDecoration(
                      border:
                          Border(right: BorderSide(color: AppColors.stroke)))),
            ),
            Expanded(
                flex: 8,
                child: Text(
                  'Entrar com Google',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.buttonGray,
                ))
          ],
        ),
      ),
    );
  }
}
