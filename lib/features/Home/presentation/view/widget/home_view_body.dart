import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/core/widgets/custom_text_field.dart';
import 'package:ecommerce_app/features/Home/presentation/manager/cubit/theme_cubit.dart';
import 'package:ecommerce_app/features/Home/presentation/view/all_products_view.dart';
import 'package:ecommerce_app/features/Home/presentation/view/widget/custom_brand_listview.dart';
import 'package:ecommerce_app/features/Home/presentation/view/widget/custom_products_gridview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Hemendra',
            style: Styles.text28SemiBold,
          ),
          Text(
            'Welcome to Laza.',
            style: Styles.text15Regular.copyWith(
              color: colors.kSecondColor,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              const Expanded(
                child: CustomTextField(
                  icon: Icons.search,
                  hintText: 'Search...',
                ),
              ),
              const SizedBox(width: 10),
              SvgPicture.asset('assets/images/Voice.svg'),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Choose Brand',
                style: Styles.text17Medium,
              ),
              Text('View All',
                  style: Styles.text13Regular.copyWith(
                    color: colors.kSecondColor,
                  )),
            ],
          ),
          const SizedBox(height: 15),
          const SizedBox(
            height: 50,
            child: CustomBrandListView(),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'New Arraival',
                style: Styles.text17Medium,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => const AllProductsView());
                },
                child: Text('View All',
                    style: Styles.text13Regular.copyWith(
                      color: colors.kSecondColor,
                    )),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const CustomProductsGridView(),
        ],
      ),
    );
  }
}
