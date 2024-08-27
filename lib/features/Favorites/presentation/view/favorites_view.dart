import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/Favorites/Data/repo/favorites_repo._imp.dart';
import 'package:ecommerce_app/features/Favorites/presentation/manager/cubit/favorite_cubit.dart';
import 'package:ecommerce_app/features/Favorites/presentation/view/widget/favorites_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          FavoriteCubit(FavoritesRepoImp())..getFavoriteProducts(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.arrow_back)),
          title: const Text(
            '  Favorites  ',
            style: Styles.text40RegularSacramento,
          ),
        ),
        body: const FavoritesViewBody(),
      ),
    );
  }
}
