import 'package:flutter/material.dart';
import 'package:lit_library/core/utils/styles.dart';

import '../../../../../core/utils/assets_data.dart';

class BestSellerListItem extends StatelessWidget {
  const BestSellerListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  const BoxDecoration(shape: BoxShape.rectangle),
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
                      fit: BoxFit.fill, image: AssetImage(AssetsData.testImage2)),
                ))),
            const SizedBox(
              width: 20,
            ),
            const Column(
              children: [
                Text(
                  "Harry potter and the goblet of fire",
                  style: Styles.titleMedium,
                  maxLines: 2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}