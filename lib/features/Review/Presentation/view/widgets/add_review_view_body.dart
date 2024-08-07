import 'package:ecommerce_app/core/utils/constants.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/core/widgets/custom_button.dart';
import 'package:ecommerce_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class AddReviewViewBody extends StatelessWidget {
  const AddReviewViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Text(
              'Name',
              style: Styles.text17Medium,
            ),
          ),
          SliverToBoxAdapter(
              child: CustomTextField(
            hintText: 'Type your name',
            fillColor: kSecondColor.withOpacity(.2),
          )),
          const SliverToBoxAdapter(
              child: SizedBox(
            height: 10,
          )),
          const SliverToBoxAdapter(
              child: Text(
            'How was your experience ?',
            style: Styles.text17Medium,
          )),
          SliverToBoxAdapter(
              child: CustomTextField(
            hintText: 'Describe  your experience ?',
            fillColor: kSecondColor.withOpacity(.2),
            maxLines: 12,
          )),
          const SliverToBoxAdapter(
              child: SizedBox(
            height: 5,
          )),
          SliverToBoxAdapter(
              child: Slider(
            value: 4.6,
            max: 5,
            divisions: 10,
            activeColor: kMainColor,
            onChanged: (value) {},
          )),
          // const Spacer(),
          const SliverFillRemaining(
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: CustomButton(title: 'Add Review'))),
        ],
      ),
    );
  }
}
