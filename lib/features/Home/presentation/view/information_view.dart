import 'package:ecommerce_app/features/Home/presentation/view/widget/information_view_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InformationView extends StatelessWidget {
  const InformationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: BackButton(
        onPressed: () {
          Get.back();
        },
      )),
      body: InformationViewBody(),
    );
  }
}
