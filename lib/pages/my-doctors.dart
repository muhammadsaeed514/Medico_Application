import 'package:flutter/material.dart';
import 'package:medico/models/doctor.dart' as model;
import 'package:medico/models/user.dart';
import 'package:medico/widgets/myDoctorsWidget.dart';
class MyDoctorsList extends StatefulWidget {
  final User currentUser=User.init().getCurrentUser();
  @override
  _MyDoctorsListState createState() => _MyDoctorsListState();
}

class _MyDoctorsListState extends State<MyDoctorsList> {
  model.DoctorsList doctorsList;
  @override
  void initState() {
    this.doctorsList = new model.DoctorsList();
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
          icon: Icon(
            Icons.arrow_back,
            color: Theme.of(context).primaryColor,
          ),
          onPressed: (){
            Navigator.of(context).pushNamed('/home', arguments:[widget.currentUser.name,widget.currentUser.phoneNumber]);
          },
        ),
        backgroundColor: Theme.of(context).accentColor,
        title: Text(
          'Doctors',
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
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(            
               color: Colors.transparent,
              ),
              child: ListView.separated(
                shrinkWrap: true,
                primary: false,
                itemCount: 4,
                separatorBuilder: (context,index){
                  return SizedBox(height: 4.0);
                },
                itemBuilder: (context,index){
                  return MyDoctorsCardWidget(
                    doctors: doctorsList.doctors.elementAt(index),
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
