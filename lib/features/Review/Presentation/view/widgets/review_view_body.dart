import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/Review/Presentation/view/add_review_view.dart';
import 'package:ecommerce_app/features/Review/Presentation/view/widgets/Custom_review_item.dart';
import 'package:ecommerce_app/features/Review/Presentation/view/widgets/custom_button_review.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ReviewsViewBody extends StatelessWidget {
  const ReviewsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '245 Reviews',
                style: Styles.text15Medium,
              ),
              CustomButtonReview(
                onTap: () {
                  Get.to(() => const AddReview(),
                      transition: Transition.downToUp);
                },
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              const Text(
                '4.8',
                style: Styles.text13Regular,
              ),
              SvgPicture.asset('assets/images/Star.svg'),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Expanded(
          child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: CustomReviewItem(),
                );
              }),
        )
      ],
    );
  }
}
