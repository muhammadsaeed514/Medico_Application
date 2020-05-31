import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Offer {
  String id = UniqueKey().toString();
  String titel;
  String description;
  String code;
  Offer.init();
  Offer(this.titel,this.description,this.code);
}

  class OffersList{
  List<Offer> _offersList;
  OffersList(){
    this._offersList =[
      new Offer('Chat whith General Physician @99', 'Cold, fever, cough or flu? Chat whith \na doctor now', "CPTHF"),
      new Offer('Chat whith General Physician @99', 'Cold, fever, cough or flu? Chat whith \na doctor now', "9V1HTL")

    ];
  }
  List<Offer> get offer => _offersList;
}