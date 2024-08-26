import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/Home/presentation/view/widget/custom_drawer_item.dart';
import 'package:ecommerce_app/features/Home/presentation/view/widget/drawer_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';

class CustomThemMode extends StatelessWidget {
  const CustomThemMode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 215,
          child: CustomDrawerItem(
            title: 'Dark Mode',
            assetName: 'assets/images/sun.svg',
            style: Styles.text15Regular,
          ),
        ),
        AdvancedSwitch(
          activeColor: const Color(0xff9775FA),
          width: 40,
          height: 25,
          controller: controller,
        ),
      ],
    );
  }
}
