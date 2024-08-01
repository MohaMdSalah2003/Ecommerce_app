import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomInfoTextfeild extends StatelessWidget {
  const CustomInfoTextfeild(
      {super.key,
      required this.hint,
      this.height,
      this.width,
      required this.title});
  final String hint;
  final double? height;
  final double? width;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Styles.text17Medium,
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                color: Color(0xFF8F959E),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                color: Color(0xFF8F959E),
              ),
            ),
            hintText: hint,
            constraints:
                BoxConstraints(maxHeight: height ?? 50, maxWidth: width ?? 335),
          ),
        )
      ],
    );
  }
}
