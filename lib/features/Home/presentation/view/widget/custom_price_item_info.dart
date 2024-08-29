import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/Home/data/Models/all_proudcts_model/product_model.dart';
import 'package:flutter/material.dart';

class Price extends StatelessWidget {
  const Price({
    super.key,
    required this.productModel,
  });
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Men's Printed Pullover Hoodie",
            style: Styles.text13Regular,
          ),
          Text(
            "Price",
            style: Styles.text13Regular,
          )
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 117,
            child: Text(
              overflow: TextOverflow.ellipsis,
              '${productModel.name}',
              style: Styles.text22SemiBold,
            ),
          ),
          Text(
            "\${${productModel.price}}",
            style: Styles.text22SemiBold,
          )
        ],
      )
    ]);
  }
}
