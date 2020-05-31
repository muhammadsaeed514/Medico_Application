import 'package:flutter/material.dart';
import 'package:medico/models/offer.dart' as model;

class OffersCardWidget extends StatefulWidget {
 
  final model.Offer offer ;
  const OffersCardWidget({Key key, this.offer}) : super(key: key);
  @override
  _OffersCardWidgetState createState() => _OffersCardWidgetState();
}

class _OffersCardWidgetState extends State<OffersCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
        padding: const EdgeInsets.all(6.0),
        child:FlatButton(        
          highlightColor: Theme.of(context).primaryColor,
          onPressed: (){
            //Navigator.of(context).pushNamed('/doctorProfil');
          },
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
          ),
          child: Card(
            elevation:0.2 ,
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
              padding: const EdgeInsets.only(top:25.0,bottom: 25.0,left: 12.0,right: 12.0),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '${widget.offer.titel}',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                        '${widget.offer.description}',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12.0,
                          color: Colors.grey
                        ),
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left:12.0,right: 12.0,top: 6,bottom: 6),
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(width: 1.0,color: Colors.grey.withOpacity(0.6),style: BorderStyle.solid),
                            color: Theme.of(context).primaryColor,

                          ),
                          child: Text(
                            '${widget.offer.code}',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16.0,
                              color: Theme.of(context).accentColor,
                            ),
                          ),
                        ),
                        RaisedButton(
                          elevation: 0,
                          color: Theme.of(context).accentColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),

                          ),
                          onPressed: (){},
                          child: Text(
                            ' Availe ',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14.0,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),

                      ],
                    )
                  ],
                ),
      
                ),
              ),
            ),
    );

  }
}