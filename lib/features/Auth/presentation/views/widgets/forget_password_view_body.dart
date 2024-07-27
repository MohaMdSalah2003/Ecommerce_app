import 'package:ecommerce_app/features/Auth/presentation/views/widgets/custom_email_textfield.dart';
import 'package:ecommerce_app/features/Auth/presentation/views/widgets/custom_forget_password_steps.dart';
import 'package:flutter/material.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomForgetPasswordStepsItem(
      text: 'Forgot Password',
      widget: CustomEmailTextField(),
      buttonTitle: 'Reset Password',
    );
  }
}
