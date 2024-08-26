import 'package:ecommerce_app/core/widgets/custom_text_field.dart';
import 'package:ecommerce_app/features/Home/presentation/view/widget/custom_products_gridview.dart';
import 'package:flutter/material.dart';

class AllProductsViewBody extends StatelessWidget {
  const AllProductsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 20,
          ),
          child: Column(
            children: [
              CustomTextField(
                icon: Icons.search,
                hintText: 'Search...',
              ),
              SizedBox(
                height: 10,
              ),
              CustomProductsGridView()
            ],
          ),
        ),
      )
    ]);
  }
}
