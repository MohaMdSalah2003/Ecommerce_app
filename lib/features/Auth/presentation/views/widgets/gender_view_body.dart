import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/Home/presentation/view/home_view.dart';
import 'package:ecommerce_app/features/Home/presentation/view/item_info_view.dart';
import 'package:ecommerce_app/features/Home/presentation/view/item_info_view_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GenderViewBody extends StatelessWidget {
  const GenderViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Image(
          image: AssetImage("assets/images/gender.png"),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            width: double.infinity,
            height: 244,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 25, bottom: 20),
              child: Column(
                children: [
                  const Text(
                    "Look Good, Feel Good",
                    style: Styles.text25SemiBold,
                  ),
                  const Text(
                    "Create your individual & unique style and look amazing everyday.",
                    style: Styles.text15Regular,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GenderButton(
                          textcolor: Color(0xFF8F959E),
                          color: Color(0xFFF5F6FA),
                          title: "female"),
                      SizedBox(
                        width: 10,
                      ),
                      GenderButton(
                          textcolor: Colors.white,
                          color: Color(0xFF9775FA),
                          title: "male")
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  GestureDetector(
                      onTap: () {
                        Get.to(() => const ItemInfoView());
                      },
                      child: const Center(
                          child: Text(
                        "Skip",
                        style: Styles.text17Medium,
                      )))
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class GenderButton extends StatelessWidget {
  const GenderButton(
      {super.key,
      required this.textcolor,
      required this.color,
      required this.title});
  final Color textcolor;
  final Color color;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 135,
      height: 60,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      child: Center(
          child: Text(
        title,
        style: Styles.text17Medium.copyWith(color: textcolor),
      )),
    );
  }
}
