import 'package:ecommerce_app/features/Home/presentation/manager/cubit/products_categories_cubit.dart';
import 'package:ecommerce_app/features/Home/presentation/view/drawer_view.dart';
import 'package:ecommerce_app/features/Home/presentation/view/widget/custom_menu_appbar.dart';
import 'package:ecommerce_app/features/Home/presentation/view/widget/custom_navigation_bar.dart';
import 'package:ecommerce_app/features/Home/presentation/view/widget/home_view_body.dart';
import 'package:ecommerce_app/features/Review/Presentation/view/review_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey();
  @override
  void initState() {
    BlocProvider.of<ProductsCategoriesCubit>(context).getAllProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      key: scaffoldState,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: CustomMenuAppBar(scaffoldState: scaffoldState),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 20),
              child: GestureDetector(
                  onTap: () {
                    Get.to(const ReviewsView());
                  },
                  child: SvgPicture.asset('assets/images/Cart.svg')))
        ],
      ),
      drawer: const DrawerView(),
      body: const HomeViewBody(),
      bottomNavigationBar: const CustomBottomnavigationBarItems(),
    );
  }
}
