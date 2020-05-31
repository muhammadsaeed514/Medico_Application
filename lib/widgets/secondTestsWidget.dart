import 'package:flutter/material.dart';
import 'package:medico/models/test.dart' as model;

class TestsSlected extends StatefulWidget {

  final model.Tests tests;
  final void onDismissed;
  const TestsSlected({Key key, this.tests,this.onDismissed}) : super(key: key);
  @override
  _TestsSlectedState createState() => _TestsSlectedState();
}

class _TestsSlectedState extends State<TestsSlected> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 12.0,right: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '${widget.tests.titel}',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14.0,
                      color: Theme.of(context).focusColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '${widget.tests.price}',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12.0,
                      color: Colors.grey
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: (){
                  return widget.onDismissed;
                },
   
                //icon: Icon(UiIcons.trash),
                icon: Icon(Icons.remove_circle_outline),
                color: Colors.red.withOpacity(0.8),
                iconSize: 30,

              )
            ],
          ),
        ),
        SizedBox(height: 15.0,child: Center(child: Container(height: 1.0,color: Colors.grey.withOpacity(0.1),),),),
      ],
    );
   
  }
}