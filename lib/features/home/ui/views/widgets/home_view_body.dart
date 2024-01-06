import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
      ],
    );
  }
}
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("assets/icons/Lit_Libraryy.png",height: 60,width: 150,),
          Padding(
            padding: const EdgeInsets.only(right:10.0),
            child: IconButton(onPressed: (){}, icon: Image.asset("assets/icons/search_icon.png",width: 32,height: 32,),),
          ),
          
        ],
      ),
    );
  }
}