import 'package:flutter/material.dart';
import 'bookdetails_appbar.dart';
import 'bookdetails_image.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          const BookdetailsAppBar(),
          const SizedBox(height: 10,),
          SizedBox(
            height: MediaQuery.of(context).size.height *.38,
            //width: 150,
            child: const BookDetailsImage()),
        ],
      ),
    );
  }
}
