import 'package:dotted_border/dotted_border.dart';
import 'package:earning_fish/utils/constant.dart';
import 'package:earning_fish/utils/responsive.dart';
import 'package:earning_fish/widgets/custom_appbar.dart';
import 'package:earning_fish/widgets/dashline.dart';
import 'package:flutter/material.dart';

class ReferalScreen extends StatelessWidget {
  const ReferalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = Responsive.screenHeight(context);
    double width = Responsive.screenWidth(context);
    return Scaffold(
      appBar: customappbar('Refer & Earn', Icons.info_outline_rounded),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                height: height * 0.23,
                width: width * 0.9,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        AppColors.gradient1,
                        AppColors.gradient2,
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text('Get 50 coins each \nInvite your friends ',style: TextStyle(color: AppColors.purewhite,fontSize: 16,fontWeight: FontWeight.w600),),
                    Container(
                      width: width * 0.30,
                      height: height * 0.30,
                      decoration: const BoxDecoration(
                        color: AppColors.purewhite,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 127, 116, 249),
                            spreadRadius: 15,
                            
                          ),
                        ],
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          const Text('Get',style: TextStyle(color: AppColors.blue),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                          
                            Image.asset('assets/image/Icon.png',height: height*0.035,fit: BoxFit.cover,),
                              const Text('50',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: AppColors.blue),),
                              
                          ],),
                          const Text('Coin',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800,color: AppColors.blue),)
                        ],),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.025,
            ),
            const Center(
              child: Text(
                'Invite your friend, and both of you will get\n 50 coins for free',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            const Text(
              'Share your Referral code',
              style: TextStyle(fontSize: 14, color: AppColors.grey),
            ),
            SizedBox(
              height: height * 0.025,
            ),
            Container(
              width: width * 0.9,
              height: height * 0.07,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.purewhite,
              ),
              child:DottedBorder(
            color: AppColors.grey, 
            strokeWidth: 1,
            borderType: BorderType.RRect,
            radius: const Radius.circular(12),
            dashPattern: const [6, 3], 
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '98665485XYS',
                      style: TextStyle(
                        color:AppColors.blue, 
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Icon(
                      Icons.copy_outlined,
                      color: AppColors.blue, 
                    ),
                  ],
                ),
              ),
            ),
          ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: height * 0.34,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.purewhite,
                    borderRadius: BorderRadius.circular(12)),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReferralStep(
                        icon: 'assets/icons/Link.png',
                        text:
                            'Invite your friend to install the app\n with the link',
                      ),
                      DashedLine(),
                      ReferralStep(
                        icon: 'assets/icons/Fish Icon.png',
                        text: 'Your friends buy minimum one fish',
                      ),
                      DashedLine(),
                      ReferralStep(
                        icon: 'assets/icons/wall.png',
                        text: 'You and your friend both earn free\n 50 coins',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: width * 0.9,
              height: height * 0.08,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.blue,
              ),
              child: const Center(
                child: Text(
                  'Invite friend',
                  style: TextStyle(
                      color: AppColors.purewhite,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
             SizedBox(
              height: height * 0.08,
            ),
          ],
        ),
      ),
    );
  }
}
