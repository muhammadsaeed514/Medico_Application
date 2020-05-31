import 'package:flutter/material.dart';
import 'package:medico/models/doctor.dart';

class Appointment{
  String id =UniqueKey().toString();
  Doctor doctor;
  String date;
  
  Appointment(this.date,this.doctor);

}
class ApointmentList{
  Doctor currentDoctor = new Doctor.init().getCurrentDoctor();
  List<Appointment> _appointmentList;

  ApointmentList(){
    this._appointmentList =[
      new Appointment("14 Decembre 2019", currentDoctor),
      new Appointment("10 Novembre 2019", currentDoctor),
      new Appointment("12 Octobre 2019", currentDoctor),
    ];
  }
  List<Appointment> get appointment => _appointmentList;

}