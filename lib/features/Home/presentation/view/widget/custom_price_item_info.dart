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
            "Product",
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
            width: 160,
            child: Text(
              overflow: TextOverflow.visible,
              '${productModel.name}',
              style: Styles.text17SemiBold,
            ),
          ),
          Text(
            "${productModel.price}",
            style: Styles.text22SemiBold,
          )
        ],
      )
    ]);
  }
}
