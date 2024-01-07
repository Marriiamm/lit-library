import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset("assets/icons/Lit_Libraryy.png",height: 60,width: 120,),
        IconButton(onPressed: (){}, icon: Image.asset("assets/icons/search_icon.png",width: 32,height: 32,),),
        
      ],
    );
  }
}