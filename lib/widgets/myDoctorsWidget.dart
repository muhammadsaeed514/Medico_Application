import 'package:flutter/material.dart';
import 'package:medico/models/doctor.dart' as model;
class MyDoctorsCardWidget extends StatefulWidget {
  final model.Doctor doctors;
  const MyDoctorsCardWidget({Key key, this.doctors}) : super(key: key);
  
  @override
  _MyDoctorsCardWidgetState createState() => _MyDoctorsCardWidgetState();
}

class _MyDoctorsCardWidgetState extends State<MyDoctorsCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          FlatButton(
            padding: EdgeInsets.all(0),
            onPressed: (){
              Navigator.of(context).pushNamed('/doctorProfil');
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Card(
              elevation:0.2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1), offset: Offset(0,4), blurRadius: 10)
                  ],
                ),
                padding: const EdgeInsets.only(top:20.0,bottom: 20.0,left: 12.0,right: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(right: 25.0),
                          child:ball(this.widget.doctors.avatar),
                        ),
                        Container(
                          width: 150,
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '${widget.doctors.name}',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                  fontSize: 14.0,
                                ),
                              ),
                              SizedBox(height: 12,),
                              Text(
                                '${widget.doctors.description}',
                                textWidthBasis: TextWidthBasis.longestLine,
                                
                                style: TextStyle(

                                  color: Colors.grey,
                                  fontFamily: 'Poppins',
                                  fontSize: 12.0,
                                ),
                              ),
                            ],
                          )

                        ),
                      ],
                    ),
                    Container(
                      child: IconButton(  
                        padding: EdgeInsets.all(0),
                        onPressed: (){
                          Navigator.of(context).pushNamed('/chat');
                        },
                        icon: Icon(Icons.chat_bubble_outline),
                        iconSize: 20,
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

        ],
      )
      
    );
  }
  Widget ball(String image){
    return Container(
      height: 60,width: 60.0,
      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(100.0),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover,)

      ),
    );
  }
}