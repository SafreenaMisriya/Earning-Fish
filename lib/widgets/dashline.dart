import 'package:dotted_line/dotted_line.dart';
import 'package:earning_fish/utils/constant.dart';
import 'package:flutter/material.dart';

class DashedLine extends StatelessWidget {
  const DashedLine({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 25),
      child: DottedLine(
        direction: Axis.vertical,
        lineLength: 50,
        lineThickness: 1.0,
        dashLength: 2.0,
        dashColor: AppColors.black,
        dashGapLength: 5.0,
      ),
    );
  }
}

class ReferralStep extends StatelessWidget {
  final String icon;
  final String text;

  const ReferralStep({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: AppColors.whitecolor,
            child: Image.asset(icon),
          ),
          const SizedBox(width: 20,),
           Text(
              text,
              style: const TextStyle(fontSize: 15.0,fontWeight: FontWeight.w600),
            ),
          
        ],
      ),
    );
  }
}
