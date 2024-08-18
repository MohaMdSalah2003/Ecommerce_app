import 'package:ecommerce_app/features/Home/presentation/manager/cubit/products_categories_cubit.dart';
import 'package:ecommerce_app/features/Home/presentation/view/widget/custom_brand_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBrandListView extends StatelessWidget {
  const CustomBrandListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCategoriesCubit, ProductsCategoriesState>(
      builder: (context, state) {
        if (state is GetCategoriesSuccess) {
          return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: CustomBrandItem(
                    categoriesModel: state.categories[index],
                  ),
                );
              });
        } else if (state is GetCategoriesFauiler) {
          return Center(child: Text(state.messagEerror));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
