import 'package:flutter/material.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          height: 80,//set your height here
          width: double.infinity, //set your width here
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
          color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            spreadRadius: 8,
            offset: Offset(0,0)
        ),]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Icon(Icons.location_on_outlined),
                    SizedBox(width: 5,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'г. Пятигорск,\nул. Академика Павлова',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20)

                ),
                child: Row(
                  children: [
                    Icon(Icons.add_to_home_screen_rounded,color: Colors.white,),
                    SizedBox(width: 10,),
                    Text(
                      'Построить\nмаршрут',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Column(
            children: [
              Stack(
                children: [Container(
                  width: double.infinity,
                  height: 280,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/mashuk.png'),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25)),
                    boxShadow: [BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 6,
                        offset: Offset(0,15)
                    ),
                    ],
                  ),
                ),
                  Container(
                    
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(25)
                    ),
                    height: 280,
                  ),
                  Container(
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(width: 55,),
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
                              padding: EdgeInsets.only(right: 15,top: 10),
                              margin: EdgeInsets.only(bottom: 40),
                              child: Image.asset(
                                'assets/icons8-sun.png',
                                scale: 3,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        Text(
                          'Пятигорск',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              letterSpacing: 1,
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.w400
                          ),
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Text(
                                'Машук',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 35,
                                  color: Colors.white,
                                  letterSpacing: 1.2,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              decoration: BoxDecoration(

                              ),
                            ),

                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25,left: 10,right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(35)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(Icons.mail_sharp,color: Colors.black,),
                                    SizedBox(width: 8,),
                                    Text(
                                      'Читать \nотзывы',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                        color: Colors.black
                                      ),
                                    )
                                  ],
                                ),
                                padding: EdgeInsets.only(right: 40,left: 10,top: 5,bottom: 5),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(35)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          'Вы и',
                                          style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              color: Colors.black
                                          ),
                                        ),
                                        Text(
                                          '13 245 другие',
                                          style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              color: Colors.black
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 5,),
                                    Icon(Icons.favorite,color: Colors.red,size: 28,),
                                    SizedBox(width: 8,),
                                  ],
                                ),
                                padding: EdgeInsets.only(left: 25,right: 10,top: 5,bottom: 5),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16,vertical: 20),
                child: Column(
                  children: [
                    Text(
                        'Хотя Пятигорск и назван в честь пятиглавого Бештау, своим рождением он обязан горе Машук, а точнее целебным источникам, которые били на ее склонах. Машук – это магматическая гора. Когда-то магма подняла ее на высоту 993 метра, но вулканом гора так и не сделалась. Именно у подножия Машука и началась застройка города, здесь «водяное общество» прогуливалось по курортным променадам в прошлые века.',
                      style: TextStyle(
                        fontFamily: 'Montserrat'
                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      width: double.infinity,
                      height: 180,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/image_13.jpeg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text(
                        'Вершина Машука - лучшее место чтобы увидеть  все окрестности Пятигорска, а в хорошую погоду  перед вами откроется белоснежная цепь гор  Кавказского хребта во главе с величавым  Эльбрусом.  Подняться на вершину удобнее и быстрее всего  в вагончике канатной дороги, а интереснее  пешком. Но как бы вы ни поднялись на вершину,  вы точно не пожалеете, что сделали это.  Равнодушным от увиденного не остаётся никто.',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ],
                ),
              )

            ],
          ),
        ],
      ),
    );
  }
}
