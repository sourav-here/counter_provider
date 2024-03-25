import 'package:flutter/material.dart';

class Providers  extends ChangeNotifier{
  int count = 0;
  increment(){
    count++;
    notifyListeners();
  }
  decrement(){
    count--;
    notifyListeners();
  }
}