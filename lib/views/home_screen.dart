import 'package:earning_fish/utils/constant.dart';
import 'package:earning_fish/utils/responsive.dart';
import 'package:earning_fish/widgets/boxdecor.dart';
import 'package:earning_fish/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = Responsive.screenHeight(context);
    double width = Responsive.screenWidth(context);
    return Scaffold(
      appBar: customappbar('Sell & Earn', Icons.notifications_none_outlined),
      body: Column(
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: AppColors.blue,
              ),
              height: height * 0.26,
              width: width * 0.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 25, right: 16, left: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Leads',
                          style: TextStyle(
                              color: AppColors.purewhite, fontSize: 19.0),
                        ),
                        Row(
                          children: [
                            const Text(
                              'Available Coin : 546',
                              style: TextStyle(
                                  color: AppColors.purewhite, fontSize: 16),
                            ),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            Image.asset('assets/image/Icon.png')
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.07),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildLeadStatus('SUCCESS', '2',height,width),
                      buildLeadStatus('IN PROCESS', '0',height,width),
                      buildLeadStatus('REJECTED', '5',height,width),
                      buildLeadStatus('ACTION \nREQUIRED', '0',height,width),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: height * 0.01),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 12.0,
                mainAxisSpacing: 12.0,
                children: [
                  buildServiceCard('assets/image/Bank.png', 'Bank A/C',height,width),
                  buildServiceCard(
                      'assets/image/Credit Cards.png', 'Credit Cards',height,width),
                  buildServiceCard('assets/image/Group.png', 'Personal Loan',height,width),
                  buildServiceCard(
                      'assets/image/Mutual Funds.png', 'Mutual Fund',height,width),
                  buildServiceCard('assets/image/watch.png', 'Watch',height,width),
                  buildServiceCard('assets/image/Air Buds.png', 'Air Buds',height,width),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
