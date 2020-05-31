import 'package:flutter/material.dart';
import 'package:medico/models/medecine.dart' as model;

class MedecinesSlectedList extends StatefulWidget {

  final model.Medecine medecines;
  const MedecinesSlectedList({Key key, this.medecines}) : super(key: key);
  @override
  _MedecinesSlectedListState createState() => _MedecinesSlectedListState();
}

class _MedecinesSlectedListState extends State<MedecinesSlectedList> {
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
                    '${widget.medecines.name}',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14.0,
                      color: Theme.of(context).focusColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '${widget.medecines.price}',
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
                  
                },
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