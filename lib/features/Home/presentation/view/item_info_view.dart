import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:ecommerce_app/features/Home/data/Models/all_proudcts_model/product_model.dart';
import 'package:ecommerce_app/features/Home/presentation/view/item_info_view_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemInfoView extends StatelessWidget {
  const ItemInfoView({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: colors.kMainColor,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () {}),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        forceMaterialTransparency: true,
        elevation: 0,
      ),
      body: SafeArea(
          child: ItemInfoViewBody(
        productModel: productModel,
      )),
    );
  }
}
