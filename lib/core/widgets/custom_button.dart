import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
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
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: 300,
        height: 67,
        decoration: ShapeDecoration(
          color: colors.kMainColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(23),
          ),
        ),
        child: Center(
          child: widget.isLoading
              ? const CircularProgressIndicator()
              : Text(
                  widget.title,
                  textAlign: TextAlign.center,
                  style: Styles.text17Medium.copyWith(
                    color: const Color(0xFFFFF9FF),
                    height: 0.06,
                  ),
                ),
        ),
      ),
    );
  }
}
