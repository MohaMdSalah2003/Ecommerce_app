import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:ecommerce_app/features/Cart/presentation/views/cart_view.dart';
import 'package:ecommerce_app/features/Favorites/presentation/view/favorites_view.dart';
import 'package:ecommerce_app/features/Home/data/repo/home_repoimp.dart';
import 'package:ecommerce_app/features/Home/presentation/manager/cubit/products_categories_cubit.dart';
import 'package:ecommerce_app/features/Home/presentation/manager/getcategoriescubit/cubit/all_categories_cubit.dart';
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

List<Widget> views = [
  const HomeView(),
  const FavoritesView(),
  const CartView(),
];

class _HomeViewState extends State<HomeView> {
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey();
  int index = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              AllCategoriesCubit(HomeRepoImp())..getAllCategories(),
        ),
        BlocProvider(
          create: (context) =>
              AllProductsCubit(HomeRepoImp())..getAllProducts(),
        ),
      ],
      child: Scaffold(
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
        body: const HomeView(),
        bottomNavigationBar: const CustomBottomnavigationBarItems(),
      ),
    );
  }
}
