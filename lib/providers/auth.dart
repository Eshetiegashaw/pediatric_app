import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class AuthProvider extends ChangeNotifier {
  int _count = 0;
  int get count => _count;

  void increment(){
    _count++;
    notifyListeners();
  }
}