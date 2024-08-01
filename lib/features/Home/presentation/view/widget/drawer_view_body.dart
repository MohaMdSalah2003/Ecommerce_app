import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/Home/presentation/view/widget/custom_drawer_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:flutter_svg/svg.dart';

class DrawerViewBody extends StatefulWidget {
  const DrawerViewBody({super.key});

  @override
  State<DrawerViewBody> createState() => _DrawerViewBodyState();
}

ValueNotifier<bool>? controller = ValueNotifier<bool>(false);

class _DrawerViewBodyState extends State<DrawerViewBody> {
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
            const CustomThemMode(),
            const SizedBox(
              height: 10,
            ),
            const CustomDrawerItem(
              title: 'Account Information',
              assetName: 'assets/images/Info Circle.svg',
              style: Styles.text15Regular,
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomDrawerItem(
              title: 'Password',
              assetName: 'assets/images/Lock.svg',
              style: Styles.text15Regular,
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomDrawerItem(
              title: 'Ordeer',
              assetName: 'assets/images/Wallet.svg',
              style: Styles.text15Regular,
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomDrawerItem(
              title: 'My Cart',
              assetName: 'assets/images/Cart.svg',
              style: Styles.text15Regular,
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomDrawerItem(
              title: 'Wishlist',
              assetName: 'assets/images/Heart.svg',
              style: Styles.text15Regular,
            ),
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
            CustomDrawerItem(
              title: 'Logout',
              assetName: 'assets/images/Logout.svg',
              style: Styles.text15Regular.copyWith(color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}

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

class CustomUserAccountInfo extends StatelessWidget {
  const CustomUserAccountInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 215,
          child: ListTile(
            title: const Text(
              'Hemendra',
              style: Styles.text17Medium,
            ),
            leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: SvgPicture.asset('assets/images/Info Circle.svg')),
            subtitle: Row(children: [
              const Text(
                'Verified Profile',
                style: Styles.text13Regular,
              ),
              SvgPicture.asset('assets/images/Badge.svg')
            ]),
          ),
        ),
        Container(
          height: 45,
          width: 65,
          padding: const EdgeInsets.all(10),
          decoration: ShapeDecoration(
              color: const Color(0xFF8F959E).withOpacity(.2),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
          child: const Center(
              child: Text(
            '3order',
            style: Styles.text11Medium,
          )),
        ),
      ],
    );
  }
}
