import 'package:flutter/material.dart';

class ProviderController extends ChangeNotifier {
  int count = 0;
  void increase() {
    count++;
    notifyListeners();
  }
}