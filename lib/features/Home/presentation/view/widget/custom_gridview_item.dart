import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:ecommerce_app/features/Home/data/Models/all_proudcts_model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomGridViewItem extends StatelessWidget {
  const CustomGridViewItem({
    super.key,
    required this.productModel,
    this.favorite = false,
    this.onTap,
    this.icoOntap,
  });
  final ProductModel productModel;
  final bool favorite;
  final void Function()? onTap, icoOntap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 257,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          GestureDetector(
            onTap: onTap,
            child: Container(
              width: 160,
              height: 203,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(productModel.image!),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 160,
            child: SizedBox(
              width: 117,
              child: Text(
                maxLines: 2,
                '${productModel.name}\n ${productModel.description}',
                style: const TextStyle(
                  color: Color(0xFF1D1E20),
                  fontSize: 11,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 200,
            child: Text(
              '\$${productModel.price}',
              style: const TextStyle(
                color: Color(0xFF1D1E20),
                fontSize: 13,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0.08,
              ),
            ),
          ),
          Positioned(
            right: 10,
            top: 20,
            child: GestureDetector(
              onTap: icoOntap,
              child: Container(
                decoration: const BoxDecoration(color: kSecondColor),
                child: favorite
                    ? const Icon(Icons.cancel)
                    : SvgPicture.asset('assets/images/Heart.svg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
