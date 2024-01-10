import 'package:flutter/material.dart';
import 'bookdetails_appbar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          BookdetailsAppBar(),
        ],
      ),
    );
  }
}
