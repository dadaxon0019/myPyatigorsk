import 'package:flutter/material.dart';

class FoodPage extends StatelessWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 40),
            child: Column(
              children: [
                Container(
                  width: 160,
                  height: 85,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/logo_dark.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),

                SizedBox(height: 10,),
                Text(
                  'Кафе и рестораны',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      letterSpacing: 1,
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.w600
                  ),
                ),
                SizedBox(height: 15,),
                Hostels(),
                SizedBox(height: 25,),
                Hostels2(),
                SizedBox(height: 25,),
                Hostels3(),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Hostels extends StatelessWidget {
  const Hostels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/caption.jpg'),
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
          height: 250,
          decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.2),
              borderRadius: BorderRadius.circular(22)
          ),

        ),
        Container(
          width: double.infinity,
          height: 250,
          padding: const EdgeInsets.only(left: 15,bottom: 15,right: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.star_sharp,color: Colors.white,),
                  Icon(Icons.star_sharp,color: Colors.white,),
                  Icon(Icons.star_sharp,color: Colors.white,),
                  Icon(Icons.star_sharp,color: Colors.white,),
                  Icon(Icons.star_border,color: Colors.white,),
                ],
              ),
              SizedBox(width: 15,),
              Text(
                'Ресторан Крыша',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    height: 1.3,
                    fontSize: 22,
                    letterSpacing:0,
                    color: Colors.white,
                    fontWeight: FontWeight.w500
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(Icons.location_on_sharp,color: Colors.white,size: 18,),
                  SizedBox(width: 5,),
                  Text(
                    'г. Пятигорск, Кирова, пр.65',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        height: 1.3,
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w400
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}


class Hostels2 extends StatelessWidget {
  const Hostels2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/food2.jpg'),
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
          height: 250,
          decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.2),
              borderRadius: BorderRadius.circular(22)
          ),

        ),
        Container(
          width: double.infinity,
          height: 250,
          padding: const EdgeInsets.only(left: 15,bottom: 15,right: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.star_sharp,color: Colors.white,),
                  Icon(Icons.star_sharp,color: Colors.white,),
                  Icon(Icons.star_sharp,color: Colors.white,),
                  Icon(Icons.star_border,color: Colors.white,),
                  Icon(Icons.star_border,color: Colors.white,),
                ],
              ),
              SizedBox(width: 15,),
              Text(
                'Санта Фе',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    height: 1.3,
                    fontSize: 22,
                    letterSpacing:0,
                    color: Colors.white,
                    fontWeight: FontWeight.w500
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(Icons.location_on_sharp,color: Colors.white,size: 18,),
                  SizedBox(width: 5,),
                  Text(
                    'г. Пятигорск, Кирова, пр.69',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        height: 1.3,
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w400
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Hostels3 extends StatelessWidget {
  const Hostels3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/food3.jpg'),
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
          height: 250,
          decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.2),
              borderRadius: BorderRadius.circular(22)
          ),

        ),
        Container(
          width: double.infinity,
          height: 250,
          padding: const EdgeInsets.only(left: 15,bottom: 15,right: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.star_sharp,color: Colors.white,),
                  Icon(Icons.star_sharp,color: Colors.white,),
                  Icon(Icons.star_sharp,color: Colors.white,),
                  Icon(Icons.star_sharp,color: Colors.white,),
                  Icon(Icons.star_border,color: Colors.white,),
                ],
              ),
              SizedBox(width: 15,),
              Text(
                'Чача Дача',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    height: 1.3,
                    fontSize: 22,
                    letterSpacing:0,
                    color: Colors.white,
                    fontWeight: FontWeight.w500
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(Icons.location_on_sharp,color: Colors.white,size: 18,),
                  SizedBox(width: 5,),
                  Text(
                    'г. Пятигорск, Бульвар Гагарина 2В',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        height: 1.3,
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w400
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
