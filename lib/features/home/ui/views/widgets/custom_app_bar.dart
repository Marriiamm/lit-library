import 'package:flutter/material.dart';
import 'package:lit_library/core/utils/app_routes.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          "assets/icons/Lit_Libraryy.png",
          height: 60,
          width: 120,
        ),
        IconButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              AppRoutes.search,
            );
          },
          icon: Image.asset(
            "assets/icons/search_icon.png",
            width: 32,
            height: 32,
          ),
        ),
      ],
    );
  }
}
