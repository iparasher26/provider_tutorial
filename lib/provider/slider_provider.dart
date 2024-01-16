import 'package:flutter/foundation.dart';

class SliderProvider with ChangeNotifier{
  double _val = 1.0;
  double get val => _val;

  void setValue(double val){
    _val=val;
    notifyListeners();
  }

}