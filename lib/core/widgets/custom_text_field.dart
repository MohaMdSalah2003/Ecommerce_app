import 'dart:developer';

import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField(
      {super.key,
      this.icon,
      required this.hintText,
      this.labelText,
      this.fillColor,
      this.maxLines,
      this.controller,
      this.validator_message,
      this.keyboardType,
      this.onchange});
  final IconData? icon;
  final String hintText;
  final String? labelText;
  final Color? fillColor;
  final int? maxLines;
  final String? validator_message;
  final TextEditingController? controller;

  final TextInputType? keyboardType;
  void Function(String)? onchange;
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: widget.onchange,
      keyboardType: widget.keyboardType,
      validator: (value) {
        if (value!.isEmpty) {
          return widget.validator_message;
        }
        return null;
      },
      controller: widget.controller,
      maxLines: widget.maxLines,
      decoration: InputDecoration(
        alignLabelWithHint: true,
        floatingLabelAlignment: FloatingLabelAlignment.start,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: widget.hintText,
        hintStyle: Styles.text13Regular,
        labelText: widget.labelText,
        labelStyle: Styles.text15Medium,
        fillColor: widget.fillColor ?? const Color(0xFF9775FA).withOpacity(.3),
        filled: true,
        prefixIcon: Icon(widget.icon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: colors.kSecondColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: colors.kSecondColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: colors.kSecondColor,
          ),
        ),
      ),
    );
  }
}
