import 'package:ecommerce_app/features/Auth/presentation/views/widgets/forget_password_view_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Get.back();
          },
          color: const Color(0xFFF5F6FA),
        ),
      ),
      body: const ForgetPasswordViewBody(),
    );
  }
}
