import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.star_rate_rounded,
          color: Color.fromARGB(255, 244, 221, 12),
        ),
        Text(
          "4.8",
          style: Styles.textStyle18,
        ),
        SizedBox(
          width: 4,
        ),
        Text(
          "(4167)",
          style: Styles.textStyle16,
        ),
      ],
    );
  }
}
