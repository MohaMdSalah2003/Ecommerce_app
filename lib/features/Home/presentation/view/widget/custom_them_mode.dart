import 'dart:ffi';
import 'dart:math';

import 'dart:developer' as developer;
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/Home/presentation/manager/cubit/theme_cubit.dart';
import 'package:ecommerce_app/features/Home/presentation/view/widget/custom_drawer_item.dart';
import 'package:ecommerce_app/features/Home/presentation/view/widget/drawer_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomThemMode extends StatelessWidget {
  const CustomThemMode({
    required this.ontap,
    required this.controller,
    super.key,
  });
  final ValueNotifier<bool>? controller;
  final void Function(dynamic)? ontap;
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
          onChanged: ontap,
          activeColor: const Color(0xff9775FA),
          width: 40,
          height: 25,
          controller: controller,
        ),
      ],
    );
  }
}
