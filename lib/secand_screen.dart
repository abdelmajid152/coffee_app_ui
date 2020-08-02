import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LatteCoffee extends StatefulWidget {
  @override
  _LatteCoffeeState createState() => _LatteCoffeeState();
}

class _LatteCoffeeState extends State<LatteCoffee> {
  @override
  Widget build(BuildContext context) {
    double widthC = MediaQuery.of(context).size.width;
    double hiethC = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
          child: Container(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      height: hiethC / 4,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/background 2.jpg'),
                              fit: BoxFit.cover)),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: hiethC / 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(left: widthC / 20),
                                child: Icon(
                                  Icons.arrow_back,
                                  size: 25,
                                  color: Colors.black,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: widthC / 20),
                                child: Stack(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 20.0, left: 10.0),
                                      child: Container(
                                        width: 40.0,
                                        height: 40.0,
                                        child: Icon(
                                          Icons.assignment,
                                          size: 20.0,
                                          color: Colors.white,
                                        ),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xff168448),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 40.0, left: 5.0),
                                      child: Container(
                                        width: 18.0,
                                        height: 18.0,
                                        child: Center(
                                            child: Text(
                                          '8',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.red[900],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: hiethC / 30,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: hiethC / 20,
                    ),
                    Container(
                        height: hiethC / 1.46,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Container(
                            padding:
                                EdgeInsets.symmetric(horizontal: widthC / 10),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  SizedBox(
                                    height: hiethC / 6,
                                  ),
                                  SubTitle(subTitle: 'Iced Coffee'),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Title(title: 'Latte with turmeric'),
                                  SizedBox(
                                    height: hiethC / 30,
                                  ),
                                  SubTitle(
                                      subTitle:
                                          'this warming drink made by steaming milk with aromatic turmeric powder and spices and poured over espresso - bringing a new twist to the match-loved latte  '),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: hiethC / 30,
                                    ),
                                    child: Divider(
                                      height: 1.0,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      MeduemTitle(medTitle: 'Quantity'),
                                      Container(
                                        child: Row(

                                          children: <Widget>[
                                           
                                            MeduemTitle(medTitle: '8'),
                                            Column(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.arrow_drop_up,
                                                ),
                                                Icon(
                                                  Icons.arrow_drop_down,
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(bottom: hiethC / 30),
                                    child: Divider(
                                      height: 1.0,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      MeduemTitle(medTitle: 'Quantity'),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: hiethC / 30, bottom: hiethC / 30),
                                    child: Divider(
                                      height: 1.0,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: hiethC / 10,
                                    child: Center(
                                      child: Text(
                                        'Add to order',
                                        style: TextStyle(
                                          fontFamily: 'ar',
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Color(0xff168448),
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                ],
                              ),
                            )))
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: hiethC / 5),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          width: widthC / 10,
                        ),
                        buildCard(
                          hiethC: hiethC,
                          widthC: widthC,
                          image: 'images/coffee1.png',
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        buildCard(
                          hiethC: hiethC,
                          widthC: widthC,
                          image: 'images/coffee.png',
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        buildCard(
                          hiethC: hiethC,
                          widthC: widthC,
                          image: 'images/coffee.png',
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}

class buildCard extends StatelessWidget {
  buildCard({
    @required this.hiethC,
    @required this.widthC,
    @required this.image,
  });

  final double hiethC;
  final String image;
  final double widthC;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: hiethC / 4.5,
      width: widthC / 2.5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image:
              DecorationImage(image: AssetImage('$image'), fit: BoxFit.cover)),
    );
  }
}

class Title extends StatelessWidget {
  Title({@required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$title',
      style: TextStyle(
          fontFamily: 'ar',
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.bold),
    );
  }
}

class SubTitle extends StatelessWidget {
  SubTitle({@required this.subTitle});

  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$subTitle',
      style: TextStyle(color: Colors.grey, fontFamily: 'ar', fontSize: 14),
    );
  }
}

class MeduemTitle extends StatelessWidget {
  MeduemTitle({@required this.medTitle});

  final String medTitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$medTitle',
      style: TextStyle(
          color: Colors.black,
          fontFamily: 'ar',
          fontSize: 16,
          fontWeight: FontWeight.bold),
    );
  }
}
