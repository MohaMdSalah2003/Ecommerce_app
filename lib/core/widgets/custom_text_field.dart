import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.icon,
      required this.hintText,
      this.labelText,
      this.fillColor,
      this.maxLines,
      this.controller,
      this.validate,
      this.keyboardType});
  final IconData? icon;
  final String hintText;
  final String? labelText;
  final Color? fillColor;
  final int? maxLines;
  final TextEditingController? controller;
  final String Function(String?)? validate;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      validator: validate,
      controller: controller,
      maxLines: maxLines,
      decoration: InputDecoration(
        alignLabelWithHint: true,
        floatingLabelAlignment: FloatingLabelAlignment.start,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: hintText,
        hintStyle: Styles.text13Regular,
        labelText: labelText,
        labelStyle: Styles.text15Medium,
        fillColor: fillColor ?? const Color(0xFF9775FA).withOpacity(.3),
        filled: true,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: kSecondColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: kSecondColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: kSecondColor,
          ),
        ),
      ),
    );
  }
}
