import 'package:flutter/material.dart';
import 'package:medico/models/appointment.dart' as model;
import 'package:medico/models/user.dart';
class AppointmentsWidget extends StatefulWidget {
  final model.Appointment appointment;
  const AppointmentsWidget({Key key, this.appointment}) : super(key: key);
  
  @override
  _AppointmentsWidgetState createState() => _AppointmentsWidgetState();
}

class _AppointmentsWidgetState extends State<AppointmentsWidget> {
  User currentUser =new User.init().getCurrentUser();
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          FlatButton(
            onPressed: (){
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
                          child: ball(this.widget.appointment.doctor.avatar),
                          
                        ),
                        Container(
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                            '${widget.appointment.doctor.name}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins',
                              fontSize: 14.0,
                            ),
                          ),
                              SizedBox(height: 12,),
                              Text(
                            '${widget.appointment.date}',
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
                          //Navigator.of(context).pushNamed('/chat');
                        },
                        icon: Icon(Icons.calendar_today),
                        iconSize: 20,
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //SizedBox(height: 20.0,child: Center(child: Container(height: 2.0,color: Colors.grey.withOpacity(0.1),),),),

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