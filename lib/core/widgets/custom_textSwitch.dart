import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';

class CustomTextSwitch extends StatelessWidget {
  const CustomTextSwitch({
    super.key,
    required ValueNotifier<bool> controller,
    required this.text,
  }) : _controller = controller;
  final String text;
  final ValueNotifier<bool> _controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Styles.text13Medium,
        ),
        AdvancedSwitch(
          activeColor: const Color(0xff9775FA),
          width: 40,
          height: 25,
          controller: _controller,
        ),
      ],
    );
  }
}
