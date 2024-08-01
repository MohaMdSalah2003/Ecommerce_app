import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomMenuAppBar extends StatefulWidget {
  const CustomMenuAppBar({
    super.key,
    required this.scaffoldState,
  });

  final GlobalKey<ScaffoldState> scaffoldState;

  @override
  State<CustomMenuAppBar> createState() => _CustomMenuAppBarState();
}

class _CustomMenuAppBarState extends State<CustomMenuAppBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: GestureDetector(
          onTap: () {
            widget.scaffoldState.currentState!.openDrawer();
          },
          child: SvgPicture.asset('assets/images/Menu.svg')),
    );
  }
}
