
import 'package:earning_fish/utils/constant.dart';
import 'package:flutter/material.dart';

 buildServiceCard(String image, String title ,double height,double width) {
    return Card(
      elevation: 0.0,
      color: AppColors.whitecolor,
      
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0),side: const BorderSide(color: AppColors.greycolor)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image),
            
             SizedBox(height: height*0.02),
            Text(title,style: const TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
            SizedBox(height: height*0.01),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Earn upto 785', style: TextStyle(color: AppColors.black)),
                   SizedBox(width: width*0.01),
                  Image.asset('assets/image/Icon.png')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
    Widget buildLeadStatus(String status, String count,double height,double width) {
    return Column(
      crossAxisAlignment:CrossAxisAlignment.center,
      children: [
        Text(
          count,
          style: const TextStyle(color: Colors.white, fontSize: 18.0),
        ),
         SizedBox(height:height*0.01 ),
       Text(
            status,
            style: const TextStyle(color: Colors.white, fontSize: 11.0,fontWeight: FontWeight.w600,),
          ),
        
      ],
    );
  }