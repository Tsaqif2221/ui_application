import 'package:flutter/material.dart';

class HomeNotifier extends ChangeNotifier {
  final BuildContext context;

  HomeNotifier(this.context);

  List<String> items = ["Post 1", "Post 2", "Post 3", "Post 4"];
  List a = [
    "assets/1.png",
    "assets/2.png",
    "assets/3.png",
    "assets/4.png",
  ];

  List b = [
    "Scan",
    "Voucher",
    "bayar",
    "Tukar poin",
  ];

  void addItem(String item) {
    items.add(item);
    notifyListeners();
  }

  void removeItem(int index) {
    items.removeAt(index);
    notifyListeners();
  }
}
