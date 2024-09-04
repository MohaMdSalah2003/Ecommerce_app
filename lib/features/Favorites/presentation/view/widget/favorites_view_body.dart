import 'package:ecommerce_app/features/Favorites/presentation/view/widget/custom_favoirte_gridview.dart';
import 'package:flutter/material.dart';

class FavoritesViewBody extends StatelessWidget {
  const FavoritesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 10.0, left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("365 Items In Favourite"),
          SizedBox(
            height: 5,
          ),
          CustomFavoirteGridView(),
        ],
      ),
    );
  }
}
