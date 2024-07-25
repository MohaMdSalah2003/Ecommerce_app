import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/Auth/presentation/views/widgets/custom_forget_password_steps.dart';
import 'package:flutter/material.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomForgetPasswordStepsItem(
      text: 'Forgot Password',
      widget: CustomEmailTextField(),
      buttonTitle: 'Confirm Mail',
    );
  }
}

class CustomEmailTextField extends StatelessWidget {
  const CustomEmailTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        width: double.infinity,
        child: Text(
          'Email Address',
          style: Styles.text13Regular.copyWith(
            color: const Color(0xFF8F959E),
          ),
          textAlign: TextAlign.start,
        ),
      ),
      TextFormField(
        decoration: const InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFF8F959E),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFF8F959E),
            ),
          ),
        ),
      )
    ]);
  }
}
