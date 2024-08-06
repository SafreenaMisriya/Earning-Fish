import 'package:earning_fish/utils/constant.dart';
import 'package:earning_fish/views/home_screen.dart';
import 'package:earning_fish/views/referal_screen.dart';
import 'package:flutter/material.dart';

class Bottomnavigationbar extends StatelessWidget {
  Bottomnavigationbar({super.key});
  final ValueNotifier<int> _selectedIndexNotifier = ValueNotifier<int>(0);

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Text('Seller'),
    Text('My Fishes'),
    ReferalScreen(),
  ];

  void _onItemTapped(int index) {
    _selectedIndexNotifier.value = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder<int>(
        valueListenable: _selectedIndexNotifier,
        builder: (context, selectedIndex, child) {
          return Center(
            child: _widgetOptions.elementAt(selectedIndex),
          );
        },
      ),
      bottomNavigationBar: Stack(
        children: [
          ValueListenableBuilder<int>(
            valueListenable: _selectedIndexNotifier,
            builder: (context, selectedIndex, child) {
              return BottomNavigationBar(
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/icons/Wallet.png'),
                      size: 40,
                    ),
                    label: 'Wallet',
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/icons/Seller.png'),
                      size: 40,
                    ),
                    label: 'Seller',
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/icons/Fish Icon.png'),
                      size: 40,
                    ),
                    label: 'My Fishes',
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/icons/User.png'),
                      size: 40,
                    ),
                    label: 'Profile',
                  ),
                ],
                currentIndex: selectedIndex,
                selectedItemColor: AppColors.blue,
                unselectedItemColor: Colors.grey,
                unselectedFontSize: 14,
                onTap: _onItemTapped,
                backgroundColor: Colors.white,
                type: BottomNavigationBarType.fixed,
              );
            },
          ),
          Center(
            heightFactor: 0.6,
            child: FloatingActionButton(
              shape: const CircleBorder(),
              onPressed: () {},
              backgroundColor: AppColors.blue,
              child: const Icon(
                Icons.play_arrow,
                color: AppColors.whitecolor,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
