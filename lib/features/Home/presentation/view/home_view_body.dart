import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Hemendra',
            style: Styles.text28SemiBold,
          ),
          Text(
            'Welcome to Laza.',
            style: Styles.text15Regular.copyWith(
              color: kSecondColor,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              const Expanded(
                child: CustomTextField(
                  icon: Icons.search,
                  hintText: 'Search...',
                ),
              ),
              const SizedBox(width: 10),
              SvgPicture.asset('assets/images/Voice.svg'),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Choose Brand',
                style: Styles.text17Medium,
              ),
              Text('View All',
                  style: Styles.text13Regular.copyWith(
                    color: kSecondColor,
                  )),
            ],
          ),
          const SizedBox(height: 15),
          SizedBox(
            height: 50,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: CustomBrandItem(),
                  );
                }),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'New Arraival',
                style: Styles.text17Medium,
              ),
              Text('View All',
                  style: Styles.text13Regular.copyWith(
                    color: kSecondColor,
                  )),
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Container(
                        decoration: ShapeDecoration(
                          color: const Color(0xFFF5F6FA),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/Rectangle 568.png',
                              height: 180,
                              width: 200,
                            ),
                            const Text(
                              'Nike Sportswear Club',
                              style: Styles.text11Medium,
                            ),
                            const Text(
                              '\$99',
                              style: Styles.text13Regular,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          top: 6,
                          right: 10,
                          child: SvgPicture.asset('assets/images/Heart.svg'))
                    ],
                  );
                },
                itemCount: 10),
          ),
        ],
      ),
    );
  }
}

class CustomBrandItem extends StatelessWidget {
  const CustomBrandItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 115,
      height: 50,
      decoration: ShapeDecoration(
        color: const Color(0xFFF5F6FA),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(children: [
          Container(
            width: 40,
            height: 40,
            decoration: ShapeDecoration(
              color: const Color(0xFFFEFEFE),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Center(child: SvgPicture.asset('assets/images/Adidas.svg')),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text('Adidas')
        ]),
      ),
    );
  }
}
