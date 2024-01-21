import 'package:flutter/material.dart';
import 'package:lit_library/core/utils/styles.dart';
import 'book_rating.dart';
import 'bookdetails_appbar.dart';
import 'bookdetails_image.dart';
import 'books_action.dart';
import 'custom_listview_item.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const BookdetailsAppBar(),
          const SizedBox(
            height: 2,
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height * .32,
              child: const BookDetailsImage()),
          const SizedBox(
            height: 18,
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
            height: 8,
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 16,
          ),
          const ActionButton(),
          const SizedBox(
            height: 20,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "You Can Also Like",
              style: Styles.textStyle18,
            ),
          ),
           SizedBox(
            height: MediaQuery.of(context).size.height*.03,
          ),
          const BookDetailsListView(),
        ],
      ),
    );
  }
}

class BookDetailsListView extends StatelessWidget {
  const BookDetailsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) { 
          return const Padding(
            padding: EdgeInsets.only(right:10.0),
            child: CustomListViewItem(),
          );
         },
    
      ),
    );
  }
}
