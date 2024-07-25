import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomForgetPasswordStepsItem extends StatelessWidget {
  const CustomForgetPasswordStepsItem({
    super.key,
    required this.text,
    required this.widget,
    required this.buttonTitle,
  });
  final String text, buttonTitle;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Column(children: [
        Text(
          text,
          style: Styles.text28SemiBold,
        ),
        const SizedBox(
          height: 30,
        ),
        SvgPicture.asset('assets/images/IMG.svg'),
        const SizedBox(
          height: 60,
        ),
        widget,
        const SizedBox(height: 50),
        const Text(
            'Please write your email to receive a confirmation code to set a/n new password.'),
        const SizedBox(height: 15),
        CustomButton(
          title: buttonTitle,
        )
      ]),
    );
  }
}
