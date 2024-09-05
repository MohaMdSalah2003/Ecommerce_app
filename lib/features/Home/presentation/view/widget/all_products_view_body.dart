import 'package:ecommerce_app/core/widgets/custom_text_field.dart';
import 'package:ecommerce_app/features/Home/presentation/view/widget/custom_sliver_grid.dart';
import 'package:flutter/material.dart';

class AllProductsViewBody extends StatelessWidget {
  const AllProductsViewBody({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: CustomTextField(
            icon: Icons.search,
            hintText: 'Search...',
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 10,
          ),
        ),
        const CustomProductsSliverGridView()
      ]),
    );
  }
}
