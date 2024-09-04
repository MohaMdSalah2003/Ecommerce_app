import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomReviewItem extends StatelessWidget {
  const CustomReviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.sizeOf(context).width - 40,
              child: ListTile(
                title: const Text(
                  'Savannah Nguyen',
                  style: Styles.text15Medium,
                ),
                leading: SvgPicture.asset('assets/images/129.svg'),
                subtitle: Row(children: [
                  SvgPicture.asset('assets/images/clock.svg'),
                  const Text(
                    '13 Sep, 2020',
                    style: Styles.text11Medium,
                  ),
                ]),
                trailing: Column(
                  children: [
                    const Text(
                      '4.8 rating',
                      style: Styles.text13Regular,
                    ),
                    SvgPicture.asset('assets/images/Star.svg'),
                  ],
                ),
              ),
            ),
          ],
        ),
        Text(
          'Lorem ipsum dolor sit amet,consectetur\n adipiscing elit. Pellentesque malesuada eget\n vitae amet...',
          style: Styles.text15Medium.copyWith(
            color: colors.kSecondColor,
            overflow: TextOverflow.ellipsis,
          ),
          maxLines: 3,
        )
      ],
    );
  }
}
