import 'package:flutter/material.dart';
import 'package:medico/models/doctor.dart' as model;
class DoctorsCardWidget extends StatefulWidget {
  final model.Doctor doctors;
  const DoctorsCardWidget({Key key, this.doctors}) : super(key: key);
  
  @override
  _DoctorsCardWidgetState createState() => _DoctorsCardWidgetState();
}

class _DoctorsCardWidgetState extends State<DoctorsCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
        padding: const EdgeInsets.all(6.0),
        child:FlatButton(        
          highlightColor: Theme.of(context).primaryColor,
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
              padding: const EdgeInsets.only(top:12.0,bottom: 12.0,left: 12.0,right: 12.0),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        ball(widget.doctors.avatar,Colors.transparent),
                        Text(
                          '${widget.doctors.state}',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12.0,
                            color: this.widget.doctors.color,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.only(bottom: 6.0),
                              child: Text(
                                '${widget.doctors.name}',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              width: 160.0,
                              padding: const EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                border: Border.all(width: 1,color: Colors.grey.withOpacity(0.1)),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child:Text(
                                '${widget.doctors.description}',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color:Colors.grey,
                                  fontSize: 10.0
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '9:30AM - 8:00PM',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
    ),
    );
  }
  Widget ball(String image,Color color){
    return Container(
      height: 60,width: 60.0,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(100.0),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover,
      ),

      ),
      
    );
  }
}