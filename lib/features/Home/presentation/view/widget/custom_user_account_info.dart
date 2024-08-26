import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
