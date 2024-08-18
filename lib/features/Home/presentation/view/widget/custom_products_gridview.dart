import 'package:ecommerce_app/features/Home/presentation/manager/cubit/products_categories_cubit.dart';
import 'package:ecommerce_app/features/Home/presentation/view/widget/custom_gridview_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomProductsGridView extends StatelessWidget {
  const CustomProductsGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCategoriesCubit, ProductsCategoriesState>(
      builder: (context, state) {
        if (state is GetProductsSuccess) {
          return Expanded(
            child: GridView.builder(
              itemCount: 10,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 65,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return CustomGridViewItem(
                  productModel: state.products[index],
                );
              },
            ),
          );
        } else if (state is GetProductsFauiler) {
          return Center(child: Text(state.messagEerror));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
