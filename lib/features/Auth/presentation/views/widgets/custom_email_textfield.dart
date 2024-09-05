import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

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
      CustomTextField(
        hintText: 'Enter your email',
      )
    ]);
  }
}
