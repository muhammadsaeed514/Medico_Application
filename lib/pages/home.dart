import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final String value;
  const Home( {Key key, this.value}) : super(key: key);
 
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 120,
                padding: const EdgeInsets.only(left:20.0,right: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft:Radius.circular(25.0),bottomRight: Radius.circular(25.0)),
                  color: Theme.of(context).accentColor,
                ),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Medico',
                          style: TextStyle(
                            fontSize:22.0,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor.withOpacity(0.8),
                          ),
                        ),
                        Text(
                          "${widget.value}",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16.0,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 80.0),
                padding: const EdgeInsets.only(left: 30.0 , right: 30.0),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlatButton(
                      padding: EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(150)),
                      onPressed: (){
                        Navigator.of(context).pushNamed('/doctors');
                      },
                      child:ball("images/nurse.png",Theme.of(context).scaffoldBackgroundColor),
                    ),
                     FlatButton(
                      padding: EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(150)),
                      onPressed: (){
                        Navigator.of(context).pushNamed('/medecines');
                      },
                      child:ball("images/pill.png",Theme.of(context).scaffoldBackgroundColor),
                    ),
                     FlatButton(
                      padding: EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(150)),
                      onPressed: (){
                        Navigator.of(context).pushNamed('/bookTest');
                      },
                      child:ball("images/microscope.png",Theme.of(context).scaffoldBackgroundColor),
                    ),

                  ],
                ),
              ),
            ],
          ),      
          Container(
            margin: const EdgeInsets.only(top: 6.0,bottom: 6.0),
            padding: const EdgeInsets.only(left: 30.0 , right: 35.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      "Doctors",
                      style: TextStyle(
                        fontSize:12.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).focusColor,
                      ),
                    ),
                     Text(
                      "Search doctors",
                      style: TextStyle(
                        fontSize:10.0,
                        fontFamily: 'Poppins',
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      "Medicines",
                      style: TextStyle(
                        fontSize:12.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).focusColor,
                      ),
                    ),
                    Text(
                      "Order medicine",
                      style: TextStyle(
                        fontSize:10.0,
                        fontFamily: 'Poppins',
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      "Diagnostic",
                      style: TextStyle(
                        fontSize:12.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).focusColor
                      ),
                    ),
                    Text(
                      "Book test",
                      style: TextStyle(
                        fontSize:10.0,
                        fontFamily: 'Poppins',
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 6, horizontal: 0),
            child:CarouselSlider(
              items: <Widget>[
                Container(
                  height: 200.0,
                  margin: const EdgeInsets.only(left: 12.0),
                  decoration: BoxDecoration(
                    border: Border.all(width:  1.0 , color: Colors.grey.withOpacity(0.2)),
                    borderRadius: BorderRadius.circular(16.0),
                    image: DecorationImage(
                      image:AssetImage('images/doctor-productivity.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  
                ),
                Container(
                  height: 200.0,
                  margin: const EdgeInsets.only(left: 12.0),
                  decoration: BoxDecoration(
                   border: Border.all(width:  1.0 , color: Colors.grey.withOpacity(0.2)),
                    borderRadius: BorderRadius.circular(16.0),
                     image: DecorationImage(
                      image:AssetImage('images/13nov_resize.jpg',),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                 Container(
                  height: 200.0,
                  margin: const EdgeInsets.only(left: 12.0),
                  decoration: BoxDecoration(
                    border: Border.all(width:  1.0 , color: Colors.grey.withOpacity(0.2)),
                    borderRadius: BorderRadius.circular(16.0),
                     image: DecorationImage(
                      image:AssetImage('images/medical-lab-technician-85654102.jpg',),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlatButton(
                  onPressed: (){},
                  child: Text(
                    'Doctors nearly  you ',
                    style: TextStyle(
                    fontSize:12.0,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).focusColor
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: (){
                    Navigator.of(context).pushNamed("/doctors");
                  },
                  child: Text(
                    'See All',
                    style: TextStyle(
                    fontSize:12.0,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).accentColor,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 180.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                card("images/asset-1.png","Dr.Alina james","B.Sc DDVL Demilitologist","4.2"),
                card("images/asset-2.png","Dr.Steve Robert","B.Sc DDVL Demilitologist","3.6"),
                card("images/asset-3.png","Dr. Senila Aaraf","B.Sc DDVL Demilitologist ","4.3"),
              ],
            ),
          ),
        ],
      ),
    ),
    );
  }
  Widget ball(String image,Color color){
    return Container(
      height: 80,width: 80.0,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(100.0),
      ),
      child: Center(
        child: Image(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
  Widget ballcard(String image,Color color){
    return Container(
      height: 60,width: 60.0,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(100.0),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover,),
      ),
    );
  }
  Widget card(String image,String title,String subTitle,String rank){
    return 
     Stack(
     children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: [BoxShadow( color: Theme.of(context).primaryColor .withOpacity(0.1), offset: Offset(0,4), blurRadius: 10)],
        ),
        width: 140.0,
        height: 140.0,
        child: Card(
          elevation: 0.2,
          child: Wrap(
            children: <Widget>[
              Container(
                margin:EdgeInsets.symmetric(horizontal: 0.0,vertical:40.0),
                child:ListTile(
                  title: Text(
                    title,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  subtitle: Column(
                    children: <Widget>[
                      Text(
                        subTitle,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 10.0
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.star,color: Colors.yellow,),
                          Text(rank,style: TextStyle(fontFamily: 'Poppins',),),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
        Container(
          margin:EdgeInsets.symmetric(horizontal: 30.0,vertical:0.0),
          child:ballcard(image,Colors.transparent),
        ),
     ],
    );

  }
}