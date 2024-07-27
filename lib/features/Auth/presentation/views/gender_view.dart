import 'package:ecommerce_app/features/Auth/presentation/views/widgets/gender_view_body.dart';
import 'package:flutter/material.dart';

class GenderView extends StatelessWidget {
  const GenderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF9775FA),
      body: SafeArea(child: GenderViewBody()),
    );
  }
}