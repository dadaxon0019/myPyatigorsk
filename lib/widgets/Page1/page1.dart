import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:you_tour/widgets/MashukPage/contentPage.dart';

import '../ParashutPage/eventsPage.dart';

class pageOne extends StatefulWidget {
   pageOne({Key? key}) : super(key: key);

  @override
  State<pageOne> createState() => _pageOneState();
}
class _pageOneState extends State<pageOne> {
  List<String> images = [
    "assets/mashuk.png",
    "assets/mashuk.png",
    "assets/mashuk.png"
  ];

  List<String> images2 = [
    "assets/parashut.jpeg",
    "assets/parashut.jpeg",
    "assets/parashut.jpeg"
  ];

  List<String> title = [
    "Машук",
    "Машук",
    "Машук"
  ];

  List<String> title2 = [
    "Полёт на параплане",
    "Полёт на параплане",
    "Полёт на параплане"
  ];

  List<String> subTitle = [
    "Всесезонный курорт <<Машук>>",
    "Всесезонный курорт <<Машук>>",
    "Всесезонный курорт <<Машук>>"
  ];

  List<String> subTitle1 = [
    "Ски-пассы на канатную дорогу",
    "Ски-пассы на канатную дорогу",
    "Ски-пассы на канатную дорогу"
  ];

  List<String> subTitle2 = [
    "Полёт на параплане с видом на ",
    "Полёт на параплане с видом на ",
    "Полёт на параплане с видом на "
  ];

  List<String> subTitle2_1 = [
    "Пятигорск и горы Бештау и Машук.",
    "Пятигорск и горы Бештау и Машук.",
    "Пятигорск и горы Бештау и Машук."
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [Container(
              width: double.infinity,
              height: 270,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/tg_image_600807620.jpeg'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 6,
                    offset: Offset(0,15)
                ),
                ],
              ),
            ),
              Container( decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(25)
              ),
                height: 270,),
              Container(
                child: Column(
                  children: [
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(width: 25,),
                        Container(
                          width: 110,
                          height: 60,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/logo.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(bottom: 60,),
                            padding: EdgeInsets.only(right: 15),
                            width: 20,
                          height: 45,
                        )
                      ],
                    ),
                    Text(
                      'Пятигорск',
                      style: TextStyle(
                          letterSpacing: 1,
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        fontFamily: 'Montserrat'
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            'Добрый вечер ',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(
                                color: Colors.white,
                                width: 1.0, // Underline thickness
                              ))
                          ),
                        ),

                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25,left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 40),
                            child: Image.asset(
                              'assets/icons8-sun.png',
                              scale: 3,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '16°С',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'Отличная погода для прогулки',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 13,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Достропремечательности:',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w600
                  ),
                ),
                Text(
                  'Все',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 18,
                      color: Colors.black
                      ,
                      fontWeight: FontWeight.w700
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 250,
            padding: EdgeInsets.all(0),
            margin: EdgeInsets.zero,

            child: CarouselSlider(
              options: CarouselOptions(
                height: 220.0,
                enableInfiniteScroll: false,
                initialPage: 0,
                viewportFraction: 0.92,
                autoPlay: false,
                autoPlayInterval: Duration(milliseconds: 5000),
                autoPlayAnimationDuration: Duration(milliseconds: 1500),
                autoPlayCurve: Curves.linear,

              ),
              items: [0,1,2].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(0),
                            margin: EdgeInsets.only(right: 20),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      images[i]),
                                  fit: BoxFit.fill,
                                ),
                                borderRadius: BorderRadius.circular(25),
                                boxShadow: [BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 7,
                                    spreadRadius: 5,
                                    offset: Offset(0,7)
                                ),]
                            ),
                            height: 250,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(22)

                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 15,bottom: 15,right: 25),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(title[i],
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 25,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                                Text(
                                  subTitle[i],
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      height: 1,
                                      fontSize: 16,
                                      letterSpacing:0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      subTitle1[i],
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          height: 1,
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400
                                      ),
                                    ),
                                    Icon(Icons.arrow_forward,color: Colors.white,),
                                  ],
                                ),

                                Row(
                                  children: [
                                    Icon(Icons.location_on_sharp,color: Colors.white,size: 18,),
                                    Text(
                                      'г. Пятигорск, ул. Академика Павлова',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          height: 1,
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400
                                      ),
                                    )

                                  ],
                                )

                              ],
                            ),

                          ),
                          Material(
                            child: Padding(
                              child: InkWell(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const ContentPage()),
                                  );
                                },
                                borderRadius: BorderRadius.circular(25),
                              ),
                              padding: EdgeInsets.only(right: 20),
                            ),
                            color: Colors.transparent,
                          )
                        ]
                    );
                  },
                );
              }).toList(),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'События:',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w600
                  ),
                ),
                Text(
                  'Все',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 18,
                      color: Colors.black
                      ,
                      fontWeight: FontWeight.w700
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 250,
            padding: EdgeInsets.all(0),
            margin: EdgeInsets.zero,

            child: CarouselSlider(
              options: CarouselOptions(
                height: 220.0,
                enableInfiniteScroll: false,
                initialPage: 0,
                viewportFraction: 0.92,
                autoPlay: false,
                autoPlayInterval: Duration(milliseconds: 5000),
                autoPlayAnimationDuration: Duration(milliseconds: 1500),
                autoPlayCurve: Curves.linear,

              ),
              items: [0,1,2].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(0),
                            margin: EdgeInsets.only(right: 20),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      images2[i]),
                                  fit: BoxFit.fill,
                                ),
                                borderRadius: BorderRadius.circular(25),
                                boxShadow: [BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 7,
                                    spreadRadius: 5,
                                    offset: Offset(0,7)
                                ),]
                            ),
                            height: 250,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(22)

                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 15,bottom: 15,right: 35),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Row(
                                    children: [
                                      Text(
                                        '13 мая',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 25,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500
                                        ),
                                      )

                                    ],
                                    mainAxisAlignment: MainAxisAlignment.end,
                                  ),
                                ),
                                Expanded(child: Container()),
                                Text(title2[i],
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 25,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                                Text(
                                  subTitle2[i],
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      height: 1,
                                      fontSize: 16,
                                      letterSpacing:0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      subTitle2_1[i],
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          height: 1,
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400
                                      ),
                                    ),
                                    Icon(Icons.arrow_forward,color: Colors.white,),
                                  ],
                                ),

                                Row(
                                  children: [
                                    Text(
                                      '#Культура #экстрим',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          height: 1,
                                          fontSize: 17,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700
                                      ),
                                    )

                                  ],
                                )
                              ],
                            ),

                          ),
                          Material(
                            child: Padding(
                              child: InkWell(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const EventPage()),
                                  );
                                },
                                borderRadius: BorderRadius.circular(25),
                              ),
                              padding: EdgeInsets.only(right: 20),
                            ),
                            color: Colors.transparent,
                          )
                        ]
                    );
                  },
                );
              }).toList(),
            ),
          ),
          SizedBox(height: 15,)
        ],
      ),
    );
  }
}
