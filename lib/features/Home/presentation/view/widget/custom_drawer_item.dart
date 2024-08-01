import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({
    super.key,
    required this.title,
    required this.assetName,
    this.style,
    this.onTap,
  });
  final String title;
  final String assetName;
  final TextStyle? style;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: style,
      ),
      leading: SvgPicture.asset(assetName),
      onTap: onTap,
    );
  }
}
