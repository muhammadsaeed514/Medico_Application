import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medico/models/on_boarding.dart';

class OnBoardingWidget extends StatefulWidget {
  @override
  _OnBoardingWidgetState createState() => _OnBoardingWidgetState();
}

class _OnBoardingWidgetState extends State<OnBoardingWidget> {
  int _current = 0;
  OnBoardingList _onBoardingList;
  @override
  void initState() {
    _onBoardingList = new OnBoardingList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CarouselSlider(
              height: 500,
              viewportFraction: 1.0,
              onPageChanged: (index) {
                setState(() {
                  _current = index;
                });
              },
              items: _onBoardingList.list.map((OnBoarding boarding) {
                return Builder(
                  builder: (BuildContext context) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Image.asset(
                            boarding.image,
                            width: 500,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              
                              padding: const EdgeInsets.only(left: 20,right: 20),
                              child: Text(
                                boarding.title,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color:Theme.of(context).focusColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 26.0,
                                  fontFamily: "Poppins"
                                ),
                              ),
                            ),
                            SizedBox(height: 30,),
                            Container(
                              width: 200,
                              padding: const EdgeInsets.only(left: 20,right: 20),
                              child: Text(
                                boarding.description,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color:Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                  fontFamily: "Poppins"
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        child: Container(
          padding: const EdgeInsets.only(left: 12.0,right: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FlatButton(
                onPressed: (){
                   Navigator.of(context).pushNamed('/signup');
                },
                child: Text(
                  "Skip",
                  style: TextStyle(
                    color:Theme.of(context).accentColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                    fontFamily: "Poppins"
                  ),
                  ),
              ),
              Container(
              width: 110.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: _onBoardingList.list.map((OnBoarding boarding) {
                  return Container(
                    width: 30.0,
                    height: 3.0,
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                        color: _current == _onBoardingList.list.indexOf(boarding)
                            ? Theme.of(context).accentColor
                            : Theme.of(context).hintColor.withOpacity(0.2)),
                  );
                }).toList(),
              ),
            ),
            ],
          ),
        ), 
      ),
    );
  }
}
