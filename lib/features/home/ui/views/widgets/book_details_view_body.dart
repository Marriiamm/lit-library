import 'package:flutter/material.dart';

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
class BookdetailsAppBar extends StatelessWidget {
  const BookdetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: (){}, icon: const Icon(Icons.close)),
        IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart))
      ],
    );
  }
}