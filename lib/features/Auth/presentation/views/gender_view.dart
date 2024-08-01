import 'package:ecommerce_app/features/Auth/presentation/views/widgets/gender_view_body.dart';
import 'package:ecommerce_app/features/Cart/presentation/views/cart_view.dart';
import 'package:ecommerce_app/features/Home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';

class GenderView extends StatelessWidget {
  const GenderView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF9775FA),
      body: SafeArea(child: HomeView()),
    );
  }
}
