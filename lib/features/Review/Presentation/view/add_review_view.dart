import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/Review/Presentation/view/widgets/add_review_view_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddReview extends StatelessWidget {
  const AddReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: const Icon(Icons.arrow_back),
          title: const Text(
            'Add Reviews',
            style: Styles.text17SemiBold,
          ),
          centerTitle: true,
        ),
        body: const AddReviewViewBody());
  }
}
