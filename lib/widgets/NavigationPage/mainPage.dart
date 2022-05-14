import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:you_tour/widgets/HostelPage/hostelPage.dart';
import 'package:you_tour/widgets/Page1/page1.dart';

import '../FoodPage/foodPage.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedTab = 0;
  static  List<Widget> _widgetOptions = [
     pageOne(),
    HostelPage(),
    FoodPage(),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.only(top:100),
          child: Center(
            child: Text(
              'В разработке',
              style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 25
              ),
            ),
          ),
        ),
      ],
    )
  ];

  void onSelectedTab(int index){
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedTab,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Image.asset(
              'assets/mountain.png',
              scale: 2,
              color: Colors.grey,
            ),
            activeIcon: Image.asset(
              'assets/mountain.png',
              scale: 2,

            ),
            title: Text(
                'Лента'
            )
        ),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/hotel.png',
                scale: 2,
                color: Colors.grey,
              ),
              activeIcon: Image.asset(
                'assets/hotel.png',
                scale: 2,

              ),
              title: Text(
                  'Отели'
              )
          ),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/restaurant.png',
                scale: 2,
                color: Colors.grey,
              ),
              activeIcon: Image.asset(
                'assets/restaurant.png',
                scale: 2,

              ),
              title: Text(
                  'Еда'
              )
          ),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/map.png',
                scale: 2,
                color: Colors.grey,
              ),
              activeIcon: Image.asset(
                'assets/map.png',
                scale: 2,

              ),
              title: Text(
                  'Карта'
              )
          ),
    ],
        onTap: onSelectedTab,
          selectedItemColor: Colors.black,
        ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _widgetOptions[_selectedTab]
          ],
        ),
      ),
    );
  }
}


