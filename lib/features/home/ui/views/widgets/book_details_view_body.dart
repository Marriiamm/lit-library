import 'package:flutter/material.dart';
import 'package:lit_library/constants.dart';
import 'package:lit_library/core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import 'book_rating.dart';
import 'bookdetails_appbar.dart';
import 'bookdetails_image.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          const BookdetailsAppBar(),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height * .38,
              child: const BookDetailsImage()),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "The Jungle Book",
            style: Styles.textStyle30,
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            "Rudyard Kibling",
            style: Styles.textStyle16.copyWith(fontStyle: FontStyle.italic),
          ),
          const SizedBox(
            height: 12,
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 20,
          ),
          const ActionButton(),
        ],
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  const ActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              backgroundColor: kOrangeLight,
              textColor: Colors.black54,
              borderrRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                topLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              backgroundColor: kPrimaryClr,
              textColor: Colors.white,
              borderrRadius: BorderRadius.only(
                bottomRight: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
