import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CustomAuthButton extends StatelessWidget {
  CustomAuthButton({
    this.ontap,
    required this.buttontitle,
    super.key,
  });
  final String buttontitle;
  void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
          color: const Color(0xFF9775FA),
          width: double.infinity,
          height: 75,
          child: Center(
            child: Text(
              buttontitle,
              style: Styles.text17Medium.copyWith(color: Colors.white),
            ),
          )),
    );
  }
}
