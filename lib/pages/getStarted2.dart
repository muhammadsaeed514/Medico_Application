import 'package:flutter/material.dart';
class GetStarted2 extends StatefulWidget {
  @override
  _GetStarted2State createState() => _GetStarted2State();
}

class _GetStarted2State extends State<GetStarted2> {
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
              image: AssetImage('images/f-1.png'),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
              'Book Appointment',
                style: TextStyle(
                  color:Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 26.0,
                  fontFamily: "Poppins"
                ),
              ),
              Text(
                'Book an appointment with a \n right doctor',
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
                    color: Theme.of(context).accentColor,
                  ),
                  Container(
                    width: 50,
                    height: 3,
                    color: Color(0xdddddddd),
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