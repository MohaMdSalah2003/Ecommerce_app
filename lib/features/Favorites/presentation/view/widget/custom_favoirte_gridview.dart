import 'package:ecommerce_app/features/Favorites/presentation/manager/cubit/favorite_cubit.dart';
import 'package:ecommerce_app/features/Home/presentation/view/item_info_view.dart';
import 'package:ecommerce_app/features/Home/presentation/view/widget/custom_gridview_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class CustomFavoirteGridView extends StatelessWidget {
  const CustomFavoirteGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteCubit, FavoriteState>(
      builder: (context, state) {
        if (state is GetFavoritProductsSuccssful) {
          return Expanded(
            child: GridView.builder(
              itemCount: state.favoriteProductS.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 65,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Get.to(ItemInfoView(
                      productModel: state.favoriteProductS[index],
                    ));
                  },
                  child: CustomGridViewItem(
                    favorite: true,
                    onTap: () {
                      Get.to(ItemInfoView(
                        productModel: state.favoriteProductS[index],
                      ));
                    },
                    icoOntap: () {
                      BlocProvider.of<FavoriteCubit>(context)
                          .deleteProductFromFavorites(
                              docId: state.favoriteProductS[index].docId!);
                    },
                    productModel: state.favoriteProductS[index],
                  ),
                );
              },
            ),
          );
        } else if (state is GetFavoritProductsFailuer) {
          return Center(child: Text(state.messageerror));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
