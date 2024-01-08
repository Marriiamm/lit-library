import 'package:flutter/material.dart';
import 'package:lit_library/core/utils/styles.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/assets_data.dart';

class BestSellerListItem extends StatelessWidget {
  const BestSellerListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(shape: BoxShape.rectangle),
      child: SizedBox(
        height: 130,
        child: Row(
          children: [
            AspectRatio(
                aspectRatio: 0.6,
                child: Container(
                    decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  color: Colors.black26,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(AssetsData.testImage2)),
                ))),
            const SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    "Harry potter and the goblet of fire",
                    style:
                        Styles.textStyle20.copyWith(fontFamily: kGTSectraFine),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "J.K.Rowling",
                  style: Styles.textStyle14,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "19.99 &",
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const BookRating()
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
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
