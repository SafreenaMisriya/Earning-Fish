import 'package:earning_fish/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

customappbar(String title,IconData? icon,){
  return AppBar(
   elevation: 0,
   automaticallyImplyLeading: false,
   leading: IconButton(onPressed: () {},icon:const Icon(Icons.arrow_back_ios)),
   title: Text(title,style: GoogleFonts.dmSans(fontWeight: FontWeight.w700,fontSize: 18 ),),
   centerTitle: true,
   actions:  [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        backgroundColor: AppColors.purewhite,
        child: Icon(icon,color:AppColors.black ,),),
    )
   ],

  );
}