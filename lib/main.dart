
import 'package:coffee_app_ui/secand_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double widthC = MediaQuery.of(context).size.width;
    double hiethC = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 25.0),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/bg2.png'),
                        fit: BoxFit.cover)),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: hiethC / 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Icon(
                          Icons.arrow_back,
                          size: 25,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: widthC / 2,
                        ),
                        Stack(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 20.0, left: 10.0),
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
                              padding: EdgeInsets.only(top: 40.0, left: 5.0),
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
                        )
                      ],
                    ),
                    SizedBox(
                      height: hiethC / 30,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Starbucks Coffee',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: widthC / 14,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'ar'),
                        )
                      ],
                    ),
                    SizedBox(
                      height: hiethC / 50,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: buildPressedCard(
                              widthC: widthC,
                              title: '59',
                              subTitle: 'all products',
                            ),
                            height: hiethC / 9,
                            width: widthC / 2.5,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.green[900],
                                  blurRadius: 3,
                                )
                              ],
                              borderRadius: BorderRadius.circular(5.0),
                              color: Color(0xff168448),
                            ),
                          ),
                          SizedBox(
                            width: widthC / 20,
                          ),
                          Container(
                            child: buildNotPressedCard(
                              widthC: widthC,
                              title: '14',
                              subTitle: 'milk',
                            ),
                            height: hiethC / 9,
                            width: widthC / 2.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Colors.grey[300],
                            ),
                          ),
                          SizedBox(
                            width: widthC / 20,
                          ),
                          Container(
                            child: buildNotPressedCard(
                              widthC: widthC,
                              title: '17',
                              subTitle: 'coffee',
                            ),
                            height: hiethC / 9,
                            width: widthC / 2.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Colors.grey[300],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: hiethC / 20,
              ),
              Divider(
                endIndent: widthC / 20,
                height: 1.0,
                color: Colors.grey,
              ),
              SizedBox(
                height: 20.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    GestureDetector(onTap: (){
              Navigator.push(context,
              MaterialPageRoute(builder: (context) {
              return LatteCoffee();
              }));
              },
                        child: buildCard(
                      hiethC: hiethC,
                      widthC: widthC,
                      image: 'images/coffee.png',
                      title: 'Latte with turmeric',
                      subtitle: 'Iced Coffee',
                      money: '\$2.99',
                    )),
                    SizedBox(
                      width: widthC / 20,
                    ),
                    buildCard(
                      hiethC: hiethC,
                      widthC: widthC,
                      image: 'images/coffee1.png',
                      title: 'Latte with turmeric',
                      subtitle: 'Iced Coffee',
                      money: '\$4.99',
                    ),
                    SizedBox(
                      width: widthC / 20,
                    ),
                    buildCard(
                      hiethC: hiethC,
                      widthC: widthC,
                      image: 'images/coffee1.png',
                      title: 'Latte with turmeric',
                      subtitle: 'Iced Coffee',
                      money: '\$3.55',
                    ),
                    SizedBox(
                      width: widthC / 20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class buildCard extends StatelessWidget {
  const buildCard(
      {@required this.hiethC,
      @required this.widthC,
      this.title,
      this.image,
      this.money,
      this.subtitle});

  final String image;
  final String money;
  final String subtitle;
  final String title;
  final double hiethC;
  final double widthC;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            height: hiethC / 3.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('$image'), fit: BoxFit.cover),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25.0),
                topLeft: Radius.circular(25.0),
              ),
            ),
          ),
          SizedBox(
            height: hiethC / 30,
          ),
          buildNotPressedCard(
            widthC: widthC,
            title: '$title',
            subTitle: '$subtitle',
          ),
          SizedBox(
            height: hiethC / 30,
          ),
          Divider(
            indent: widthC / 12,
            endIndent: widthC / 12,
            height: 1.0,
            color: Colors.grey,
          ),
          SizedBox(
            height: hiethC / 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: widthC / 20),
                child: Text(
                  '$money',
                  style: TextStyle(
                      fontFamily: 'ar',
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: widthC / 20.0),
                height: 40,
                width: 40,
                child: Center(
                    child: Icon(
                  Icons.add,
                  color: Colors.grey[600],
                )),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(5.0)),
              )
            ],
          )
        ],
      ),
      width: widthC / 1.7,
      height: hiethC / 1.8,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25)),
    );
  }
}

class buildPressedCard extends StatelessWidget {
  buildPressedCard({@required this.widthC, this.title, this.subTitle});

  final double widthC;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: widthC / 20),
          child: Text(
            '$title',
            style: TextStyle(
                fontFamily: 'ar',
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: widthC / 20),
          child: Text(
            '$subTitle',
            style:
                TextStyle(fontFamily: 'ar', color: Colors.white, fontSize: 14),
          ),
        )
      ],
    );
  }
}

class buildNotPressedCard extends StatelessWidget {
  buildNotPressedCard({@required this.widthC, this.title, this.subTitle});

  final double widthC;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: widthC / 20),
          child: Text(
            '$title',
            style: TextStyle(
                fontFamily: 'ar',
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: widthC / 20),
          child: Text(
            '$subTitle',
            style:
                TextStyle(color: Colors.grey, fontFamily: 'ar', fontSize: 14),
          ),
        )
      ],
    );
  }
}
