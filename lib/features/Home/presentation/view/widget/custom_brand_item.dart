import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBrandItem extends StatelessWidget {
  const CustomBrandItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 115,
      height: 50,
      decoration: ShapeDecoration(
        color: const Color(0xFFF5F6FA),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(children: [
          Container(
            width: 40,
            height: 40,
            decoration: ShapeDecoration(
              color: const Color(0xFFFEFEFE),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Center(child: SvgPicture.asset('assets/images/Adidas.svg')),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text('Adidas')
        ]),
      ),
    );
  }
}
