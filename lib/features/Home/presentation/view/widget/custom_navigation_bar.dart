import 'package:ecommerce_app/core/utils/themes.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomnavigationBarItems extends StatefulWidget {
  const CustomBottomnavigationBarItems({
    super.key,
    required this.index,
    required this.onItemSelected,
  });
  final int index;
  final void Function(int) onItemSelected;
  @override
  State<CustomBottomnavigationBarItems> createState() =>
      _CustomBottomnavigationBarItemsState();
}

class _CustomBottomnavigationBarItemsState
    extends State<CustomBottomnavigationBarItems> {
  Color? colors = ThemeData().bottomNavigationBarTheme.unselectedItemColor;
  @override
  Widget build(BuildContext context) {
    return FlashyTabBar(
        backgroundColor:
            Theme.of(context).bottomNavigationBarTheme.backgroundColor,
        items: [
          FlashyTabBarItem(
            // activeColor: Theme.of(context)
            //     .bottomNavigationBarTheme
            //     .selectedItemColor ,
            // inactiveColor:
            //     Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
            icon: SvgPicture.asset('assets/images/Home.svg'),
            title: const Text('Home'),
          ),
          FlashyTabBarItem(
            // activeColor: Theme.of(context)
            //     .bottomNavigationBarTheme
            //     .selectedItemColor as Color,
            // inactiveColor:
            //     Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
            icon: SvgPicture.asset(
              'assets/images/Heart.svg',
              color: const Color(0xFF8F959E),
            ),
            title: const Text('Favorite'),
          ),
          FlashyTabBarItem(
            // activeColor: Theme.of(context)
            //     .bottomNavigationBarTheme
            //     .selectedItemColor as Color,
            // inactiveColor:
            //     Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
            icon:
                SvgPicture.asset(fit: BoxFit.fitWidth, 'assets/images/Bag.svg'),
            title: const Text('Bag'),
          ),
          FlashyTabBarItem(
            // activeColor: Theme.of(context)
            //     .bottomNavigationBarTheme
            //     .selectedItemColor as Color,
            // inactiveColor:
            //     Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
            icon: SvgPicture.asset(
              'assets/images/Wallet.svg',
              color: const Color(0xFF8F959E),
            ),
            title: const Text('Wallet'),
          ),
        ],
        onItemSelected: widget.onItemSelected,
        iconSize: 30,
        selectedIndex: widget.index);
  }
}
