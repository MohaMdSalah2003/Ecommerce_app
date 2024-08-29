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
  @override
  Widget build(BuildContext context) {
    return FlashyTabBar(
        items: [
          FlashyTabBarItem(
            icon: SvgPicture.asset('assets/images/Home.svg'),
            title: const Text('Home'),
          ),
          FlashyTabBarItem(
            icon: SvgPicture.asset('assets/images/Heart.svg'),
            title: const Text('Favorite'),
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
        onItemSelected: widget.onItemSelected,
        iconSize: 30,
        selectedIndex: widget.index);
  }
}
