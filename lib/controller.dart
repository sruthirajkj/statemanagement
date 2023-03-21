import 'package:flutter/material.dart';

class ProviderClass extends ChangeNotifier {
  int n = 0;

  void increment() {
    n++;
    notifyListeners();
  }
  List<String> data = [];
  void datatext( {required String txtdata}) {
    data.add(txtdata);
    notifyListeners();
  }
  String? mail1;
  String? password1;

 void maildata( {required String mail, required String password}){
  mail1= mail;
   password1= password;
   notifyListeners();


 }
 Brightness b = Brightness.light;

 void brightnesss() {
   b = Brightness.dark;
   notifyListeners();
 }
}


