import 'package:ecommerce_app/features/Home/presentation/view/home_view_body.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SvgPicture.asset('assets/images/Menu.svg'),
        actions: [SvgPicture.asset('assets/images/Cart.svg')],
      ),
      body: const HomeViewBody(),
      bottomNavigationBar: FlashyTabBar(
        items: [
          FlashyTabBarItem(
            icon: SvgPicture.asset('assets/images/Home.svg'),
            title: const Text('Home'),
          ),
          FlashyTabBarItem(
            icon: SvgPicture.asset('assets/images/Heart.svg'),
            title: const Text('Home'),
          ),
          FlashyTabBarItem(
            icon: SvgPicture.asset('assets/images/Bag.svg'),
            title: const Text('Bag'),
          ),
          FlashyTabBarItem(
            icon: SvgPicture.asset('assets/images/Wallet.svg'),
            title: const Text('Wallet'),
          ),
        ],
        onItemSelected: (int value) {},
      ),
    );
  }
}
