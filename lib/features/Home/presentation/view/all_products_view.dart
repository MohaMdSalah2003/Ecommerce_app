import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/Home/data/repo/home_repoimp.dart';
import 'package:ecommerce_app/features/Home/presentation/manager/cubit/products_categories_cubit.dart';
import 'package:ecommerce_app/features/Home/presentation/view/widget/all_products_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class AllProductsView extends StatelessWidget {
  const AllProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AllProductsCubit(HomeRepoImp())..getAllProducts(),
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(Icons.arrow_back)),
            title: const Text(
              'All Products ',
              style: Styles.text15Regular,
            ),
          ),
          body: const AllProductsViewBody()),
    );
  }
}
