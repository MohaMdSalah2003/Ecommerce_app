import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomGridViewItem extends StatelessWidget {
  const CustomGridViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 260,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 160,
              height: 180,
              decoration: ShapeDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images/Rectangle 568.png'),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          Positioned(
            right: 50,
            top: 5,
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(),
              child: SvgPicture.asset('assets/images/Heart.svg'),
            ),
          ),
          Positioned(
            bottom: 25,
            child: Text(
              'Nike Sportswear Club Fleece',
              style: Styles.text11Medium.copyWith(
                fontFamily: 'Inter',
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Text(
              '\$99',
              style: Styles.text13Medium.copyWith(
                fontFamily: 'Inter',
                // height: 0.08,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
