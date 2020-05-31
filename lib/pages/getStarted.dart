import 'package:flutter/material.dart';
class GetStarted extends StatefulWidget {
  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image:AssetImage('images/image-home.jpeg'),
            fit: BoxFit.cover,
            ),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).accentColor.withOpacity(0.8),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(12.0),
                  child: Text(
                    'Welcome To \n Medico',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color:Theme.of(context).primaryColor.withOpacity(0.8),
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      fontFamily: "Poppins"
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}