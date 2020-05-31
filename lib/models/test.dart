import 'package:flutter/material.dart';

class Tests{
  String id =UniqueKey().toString();
  String titel;
  String price;
  Tests(this.titel,this.price);

}
class TestsList{
  List<Tests> _testsList;
  TestsList(){
    this._testsList = [
      new Tests("T3-T4-TSH", '20\$'),
      new Tests("Iron Deficiency Profile", '25\$'),
      new Tests("Liver Function Tests", '100\$'),
      new Tests("Serum Electrolytes", '80\$'),
      new Tests("Lipid Profile", '55\$'),
      new Tests("Advenced Renal Profile", '99\$'),
      new Tests("HbA1c", '34\$'),
      new Tests("Serum Electrolytes", '80\$'),
      new Tests("Lipid Profile", '55\$'),
      new Tests("Advenced Renal Profile", '99\$'),
      new Tests("HbA1c", '34\$'),

    ];
  }
  List<Tests> get tests => _testsList;

}