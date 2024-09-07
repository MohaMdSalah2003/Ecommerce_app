import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/Home/presentation/manager/cubit/theme_cubit.dart';
import 'package:ecommerce_app/features/Home/presentation/view/information_view.dart';
import 'package:ecommerce_app/features/Home/presentation/view/widget/custom_drawer_item.dart';
import 'package:ecommerce_app/features/Home/presentation/view/widget/custom_them_mode.dart';
import 'package:ecommerce_app/features/Home/presentation/view/widget/custom_user_account_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class DrawerViewBody extends StatefulWidget {
  const DrawerViewBody({super.key});

  @override
  State<DrawerViewBody> createState() => _DrawerViewBodyState();
}

class _DrawerViewBodyState extends State<DrawerViewBody> {
  ValueNotifier<bool>? controller = ValueNotifier<bool>(false);
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            SvgPicture.asset('assets/images/Menu.svg'),
            const SizedBox(height: 15),
            const CustomUserAccountInfo(),
            const SizedBox(height: 10),
            CustomThemMode(
              ontap: (value) {
                setState(() {
                  Get.changeTheme(
                      Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
                });
              },
              controller: controller,
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => const InformationView());
              },
              child: const CustomDrawerItem(
                title: 'Account Information',
                assetName: 'assets/images/Info Circle.svg',
                style: Styles.text15Regular,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // const CustomDrawerItem(
            //   title: 'Password',
            //   assetName: 'assets/images/Lock.svg',
            //   style: Styles.text15Regular,
            // ),
            const SizedBox(
              height: 10,
            ),
            // const CustomDrawerItem(
            //   title: 'Ordeer',
            //   assetName: 'assets/images/Wallet.svg',
            //   style: Styles.text15Regular,
            // ),
            const SizedBox(
              height: 10,
            ),
            // const CustomDrawerItem(
            //   title: 'My Cart',
            //   assetName: 'assets/images/Bag@x2.svg',
            //   style: Styles.text15Regular,
            // ),
            const SizedBox(
              height: 10,
            ),
            // const CustomDrawerItem(
            //   title: 'Wishlist',
            //   assetName: 'assets/images/Heart.svg',
            //   style: Styles.text15Regular,
            // ),
            const SizedBox(
              height: 10,
            ),
            const CustomDrawerItem(
              title: 'Setting',
              assetName: 'assets/images/Setting.svg',
              style: Styles.text15Regular,
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {},
              child: CustomDrawerItem(
                title: 'Logout',
                assetName: 'assets/images/Logout.svg',
                style: Styles.text15Regular.copyWith(color: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
