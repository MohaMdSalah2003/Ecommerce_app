import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:ecommerce_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onTap,
    required this.title,
    this.isLoading = false,
  });
  final void Function()? onTap;
  final String title;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 353,
        height: 67,
        decoration: ShapeDecoration(
          color: kMainColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(19),
          ),
        ),
        child: Center(
          child: isLoading
              ? const CircularProgressIndicator()
              : Text(
                  'Get Started',
                  textAlign: TextAlign.center,
                  style: Style.textstyle18.copyWith(
                    color: const Color(0xFFFFF9FF),
                    height: 0.06,
                  ),
                ),
        ),
      ),
    );
  }
}
