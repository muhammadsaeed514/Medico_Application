import 'package:flutter/material.dart';
class GetStarted3 extends StatefulWidget {
  @override
  _GetStarted3State createState() => _GetStarted3State();
}

class _GetStarted3State extends State<GetStarted3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 12.0,right: 12.0,),
            child: Image(
              image: AssetImage('images/undraw_alien_science_nonm.png'),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
              'Book Diagonstic',
                style: TextStyle(
                  color:Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 26.0,
                  fontFamily: "Poppins"
                ),
              ),
              Text(
                'Search and book diagnostic \n test',
                textAlign: TextAlign.center,
                  style: TextStyle(
                    color:Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                    fontFamily: "Poppins"
                  ),
              ),
            ],  
          ),
          Container(
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
                Row(children: <Widget>[
                  Container(
                    width: 50,
                    height: 3,
                    color: Color(0xdddddddd),
                  ),
                  Container(
                    width: 50,
                    height: 3,
                    color: Color(0xdddddddd),
                  ),
                  Container(
                    width: 50,
                    height: 3,
                    color: Theme.of(context).accentColor,
                  ),
                ],)
              ],
            ),
          ),
        ],
      ),
    );
  }
}