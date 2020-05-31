import 'package:flutter/material.dart';
import 'package:medico/pages/appointment.dart';
import 'package:medico/pages/book-test-online1.dart';
import 'package:medico/pages/book-test-online2.dart';
import 'package:medico/pages/book-test-online3.dart';
import 'package:medico/pages/book-test-online4.dart';
import 'package:medico/pages/doctor-book-1.dart';
import 'package:medico/pages/doctor-book-2.dart';
import 'package:medico/pages/health.dart';
import 'package:medico/pages/medeciens-2.dart';
import 'package:medico/pages/medecines.dart';
import 'package:medico/pages/my-doctors.dart';
import 'package:medico/pages/offers.dart';
import 'package:medico/pages/Welcome.dart';
import 'package:medico/pages/chat.dart';
import 'package:medico/pages/createAccount.dart';
import 'package:medico/pages/docotr_acount.dart';
import 'package:medico/pages/doctors.dart';

import 'package:medico/pages/phoneNumber_login.dart';
import 'package:medico/pages/signup.dart';
import 'package:medico/pages/tabs.dart';
import 'package:medico/pages/verification_number.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;
    switch(settings.name){
      case '/' :
        return MaterialPageRoute(builder: (_) => Welcome());      
      case '/signup' :
        return MaterialPageRoute(builder: (_) => SignUp());
      case '/phone':
        return MaterialPageRoute(builder: (_) => PhoneLogin());
      case '/verification':
        return MaterialPageRoute(builder: (_) => VerificationNumber(data: args));
      case '/createAcount':
        return MaterialPageRoute(builder: (_) => CreateAcount());  
      case '/home':
        return MaterialPageRoute(builder: (_) => TabsWidget(acountInfos: args,));
      case '/chat' :
        return MaterialPageRoute(builder: (_) => ChatWidget());
      case '/doctors':
        return MaterialPageRoute(builder: (_) => DoctorsList());  
      case '/doctorProfil':
        return MaterialPageRoute(builder: (_) => DoctorAcount());
      case '/firstDoctorBook':
        return MaterialPageRoute(builder: (_) => DoctorBookFirstStep());
      case '/secondeDoctorBook':
        return MaterialPageRoute(builder: (_) => DoctorBookSecondeStep());
      case '/offers':
        return MaterialPageRoute(builder: (_) => OffersList());
      case '/bookTest':
        return MaterialPageRoute(builder: (_) => BookTestsOnline());
      case '/secondeBookTest':
        return MaterialPageRoute(builder: (_) => BookTestsOnlineSecondeStep());
      case '/thirdBookTest':
        return MaterialPageRoute(builder: (_) => BookTestsOnlineThirdStep());
      case "/fourthBookTest":
        return MaterialPageRoute(builder: (_) => BookTestsOnlineFourthStep());
      case '/medecines':
        return MaterialPageRoute(builder: (_) => Medecines());
      case '/medecinesSeconde':
        return MaterialPageRoute(builder: (_) => MedecinesSlected());
      case '/mydoctors':
        return MaterialPageRoute(builder: (_) => MyDoctorsList());
      case '/appointment':
        return MaterialPageRoute(builder: (_) => AppointmentsList());
      case '/health':
        return MaterialPageRoute(builder: (_) => HealthTips());



      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }
    static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}