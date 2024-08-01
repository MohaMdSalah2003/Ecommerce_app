import 'package:ecommerce_app/features/Home/presentation/view/item_info_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemInfoView extends StatelessWidget {
  const ItemInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        forceMaterialTransparency: true,
        elevation: 0,
      ),
      body: const SafeArea(child: ItemInfoViewBody()),
    );
  }
}
