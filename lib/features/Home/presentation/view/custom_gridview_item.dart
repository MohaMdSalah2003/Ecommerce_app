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
      height: 257,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 160,
            height: 203,
            decoration: ShapeDecoration(
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/Rectangle 568.png"),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          const Positioned(
            left: 0,
            top: 160,
            child: SizedBox(
              width: 117,
              child: Text(
                maxLines: 2,
                'Nike Sportswear Club\n Fleece',
                style: TextStyle(
                  color: Color(0xFF1D1E20),
                  fontSize: 11,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          const Positioned(
            left: 0,
            top: 200,
            child: Text(
              '\$99',
              style: TextStyle(
                color: Color(0xFF1D1E20),
                fontSize: 13,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0.08,
              ),
            ),
          ),
          Positioned(
            left: 100,
            top: -10,
            child: SvgPicture.asset('assets/images/Heart.svg'),
          ),
        ],
      ),
    );
  }
}
