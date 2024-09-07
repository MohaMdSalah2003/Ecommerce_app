import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/Cart/presentation/views/cart_view.dart';
import 'package:ecommerce_app/features/Favorites/Data/repo/favorites_repo._imp.dart';
import 'package:ecommerce_app/features/Favorites/presentation/manager/cubit/favorite_cubit.dart';
import 'package:ecommerce_app/features/Favorites/presentation/view/favorites_view.dart';
import 'package:ecommerce_app/features/Home/data/repo/home_repoimp.dart';
import 'package:ecommerce_app/features/Home/presentation/manager/cubit/products_categories_cubit.dart';
import 'package:ecommerce_app/features/Home/presentation/manager/cubit/theme_cubit.dart';
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

class _HomeViewState extends State<HomeView> {
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey();
  List<Widget> views = [
    const HomeViewBody(),
    const FavoritesView(),
    const CartView()
  ];
  List<String> titles = [" ", "Favourite", "Cart"];
  int index = 0;
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
        BlocProvider(
          create: (context) => FavoriteCubit(FavoritesRepoImp()),
        ),
        BlocProvider(
          create: (context) => ThemeCubit(),
        )
      ],
      child: Scaffold(
        extendBody: true,
        key: scaffoldState,
        appBar: AppBar(
          scrolledUnderElevation: 0,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            titles[index],
            style: Styles.text45RegularSacramento
                .copyWith(color: const Color(0xff9775FA)),
          ),

          leading: CustomMenuAppBar(scaffoldState: scaffoldState),
          // actions: [
          //   Padding(
          //       padding: const EdgeInsets.only(right: 20),
          //       child: GestureDetector(
          //           onTap: () {
          //             Get.to(const ReviewsView());
          //           },
          //           child: SvgPicture.asset('assets/images/Cart.svg')))
          // ],
        ),
        bottomNavigationBar: CustomBottomnavigationBarItems(
          index: index,
          onItemSelected: (int value) {
            setState(() {
              index = value;
            });
          },
        ),
        drawer: const DrawerView(),
        body: views[index],
      ),
    );
  }
}
