
import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier{
  List<Map<String, dynamic>> data = [
    {
      'title': 'Car Purchase',
      'content': 'Auto Loan',
      'balance': '-\$250',
      'color': const Color(0xff00CF87),
      'icon': Icons.directions_car_sharp
    },
    {
      'title': 'House Purchase',
      'content': 'Airbnb Home',
      'balance': '\$2250',
      'color': const Color(0xff3641B4),
      'icon': Icons.home
    },
    {
      'title': 'Transport',
      'content': 'Uber pathao',
      'balance': '\$250',
      'color': const Color(0xffF75D4D),
      'icon': Icons.card_giftcard
    },
    {
      'title': 'Shopping',
      'content': 'Wish, Apple',
      'balance': '\$350',
      'color': const Color(0xff14C3C1),
      'icon': Icons.shopping_basket_sharp
    },
    {
      'title': 'Gas',
      'content': 'Vise *** 3451',
      'balance': '-\$172.05',
      'color': const Color(0xffA84867),
      'icon': Icons.local_gas_station_sharp
    },
    {
      'title': 'Internet',
      'content': 'Vise *** 3451',
      'balance': '-\$13.01',
      'color': const Color(0xff96a848),
      'icon': Icons.signal_cellular_connected_no_internet_4_bar
    },
  ];

  void addElement() {
    data.add({
      'title': 'Gas',
      'content': 'Vise *** 3451',
      'balance': '-\$172.05',
      'color': const Color(0xffA84867),
      'icon': Icons.local_gas_station_sharp});
    notifyListeners();
  }

  void removeElement(value) {
    data.removeAt(value);
    notifyListeners();
  }
}