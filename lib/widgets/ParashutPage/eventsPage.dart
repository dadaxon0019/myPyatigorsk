import 'package:flutter/material.dart';

class EventPage extends StatelessWidget {
  const EventPage({Key? key}) : super(key: key);
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
                            'г. Пятигорск,\nпр. Калинини, 98'
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
                    color: Colors.yellow.shade700,
                    borderRadius: BorderRadius.circular(20)

                ),
                child: Row(
                  children: [
                    Icon(Icons.add_to_home_screen_rounded,color: Colors.white,),
                    SizedBox(width: 10,),
                    Text(
                      'Купить\nбилет',
                      style: TextStyle(
                          color: Colors.white,
                        fontWeight: FontWeight.w500
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
                          'assets/parashut.jpeg'),
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
                  Container( decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(25)
                  ),
                    height: 280,),
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
                                'Полёт на параплане',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 28,
                                  color: Colors.white,
                                  letterSpacing: 1.2,
                                  fontWeight: FontWeight.w500,
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
                                      'Написать \nотзыв',
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
                                          'Осталось',
                                          style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              color: Colors.black
                                          ),
                                        ),
                                        Text(
                                          '12 мест',
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Что Вас ожидает :',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    SizedBox(height: 2,),
                    Text(
                        'Вы сможете полюбоваться видами на  легендарные горы Машук и Бештау с высоты  птичьего полёта. Увидите легендарное место для  парапланеристов всей России, где проводятся  Чемпионаты России по парапланерному  спорту- гору Юца. Перед Вами откроется вид на  Пятигорск и Ессентуки с высоты нескольких сотен метров. При этом в процессе Вы сможете  общаться с инструктором и задать ему поросы о  полётах, поделиться эмоциями. Вы удивитесь  насколько просто летать, когда за спиной  управляет параплан.'
                    ,style: TextStyle(
                      fontFamily: 'Montserrat',
                    ),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      'Организационные детали :',
                      style: TextStyle(
                      fontFamily: 'Montserrat',
                          fontSize: 16,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                    Text(
                        'Как проходит экскурсия Экскурсию по небу для вас проведу я или другой  гид из нашей команды Трансфер от места сбора и обратно входит в  стоимость экскурсии, дорога к месту полета  займет около 20 минут. Одежда должна быть удобной и по погоде.  Обязательны джинсы/спортивные штаны и  спортивная обувь.'
                      ,style: TextStyle(
                      fontFamily: 'Montserrat',
                    ),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      'Детали полета на параплане :',
                      style: TextStyle(
                      fontFamily: 'Montserrat',
                          fontSize: 16,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                    SizedBox(height: 2,),
                    Text(
                        'К полету допускаются участники старше 18 лет и  весом от 40 до 110 кг Полет на параплане проходит с инструктором.  Двое и более человек могут полетать либо по  очереди, либо одновременно, но на разных парапланах — каждый с отдельным инструктором. Так же возможна видеосъёмка.'
                      ,style: TextStyle(
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
