import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomButtonReview extends StatelessWidget {
  const CustomButtonReview({
    super.key,
    this.onTap,
  });
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 114,
          height: 35,
          padding: const EdgeInsets.all(10),
          decoration: ShapeDecoration(
            color: const Color(0xFFFF7043),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/images/Edit Square.svg'),
              const SizedBox(width: 5),
              const Text(
                'Add Review',
                style: Styles.text13Medium,
              )
            ],
          ),
        ),
      ),
    );
  }
}
