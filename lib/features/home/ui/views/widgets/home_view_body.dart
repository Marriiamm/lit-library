import 'package:flutter/material.dart';
import 'package:lit_library/core/utils/styles.dart';

import 'bestseller_listview_item.dart';
import 'books_listview.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        Divider(
          indent: 10,
          endIndent: 10,
          color: Colors.black26,
        ),
        BooksListView(),
        SizedBox(
          height: 24,
        ),
        Text(
          "Best Seller",
          style: Styles.textStyle20,
        ),
        Divider(
          indent: 30,
          endIndent: 30,
          thickness: 1.5,
          color: Colors.black26,
        ),
        SizedBox(
          height: 16,
        ),
        BestSellerListItem(),
      ],
    );
  }
}

