import 'package:flutter/material.dart';
import 'package:medico/models/appointment.dart' as model;
import 'package:medico/models/user.dart';
import 'package:medico/widgets/appointmentsWidget.dart';
class AppointmentsList extends StatefulWidget {
  final User currentUser=User.init().getCurrentUser();
  @override
  _AppointmentsListState createState() => _AppointmentsListState();
}

class _AppointmentsListState extends State<AppointmentsList> {
  model.ApointmentList appointmentList;
  @override
  void initState() {
    this.appointmentList = new model.ApointmentList();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft:Radius.circular(16.0),bottomRight: Radius.circular(16.0)),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color:Theme.of(context).primaryColor )
              
             
         ,
          onPressed: (){
            Navigator.of(context).pushNamed('/home', arguments:[widget.currentUser.name,widget.currentUser.phoneNumber]);
          },
        ),
        backgroundColor: Theme.of(context).accentColor,
        title: Text(
          'Appointments',
          style: TextStyle(
            fontSize:22.0,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            color: Theme.of(context).primaryColor,
          ),
        ),

      ),
      body: SingleChildScrollView(
        child:Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(            
               color: Colors.transparent,
              ),
              child: ListView.separated(
                shrinkWrap: true,
                primary: false,
                itemCount: appointmentList.appointment.length,
                separatorBuilder: (context,index){
                  return SizedBox(height: 4.0);
                },
                itemBuilder: (context,index){
                  
                  return AppointmentsWidget(
                    appointment: appointmentList.appointment.elementAt(index),
                  );
                },
              ),
            ),
          ],
        ),      
      ),
    );
  }
  
}
