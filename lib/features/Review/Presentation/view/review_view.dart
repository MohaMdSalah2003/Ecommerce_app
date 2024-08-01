import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/Review/Presentation/view/widgets/review_view_body.dart';
import 'package:flutter/material.dart';

class ReviewsView extends StatelessWidget {
  const ReviewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.arrow_back),
        title: const Text(
          'Reviews',
          style: Styles.text17SemiBold,
        ),
        centerTitle: true,
      ),
      body: const ReviewsViewBody(),
    );
  }
}
