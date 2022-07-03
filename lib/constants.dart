import 'package:flutter/material.dart';
import 'package:flutter_neumorphism/bottom_navbar_item_schema.dart';
import 'package:flutter_neumorphism/card_data_schema.dart';

const Color appBackgroundColor = Color(0xffdde1fc);
const Color appBackgroundColorDark = Color(0xffd8dbfa);
const Color appBackgroundColorLight = Color(0xffe6e9fc);
const Color appTextColor = Color(0xff4f3db4);
const String userName = 'David';

const List<CardData> cards = [
  CardData(icon: Icons.percent, value: '230k', title: 'Sales'),
  CardData(icon: Icons.person, value: '8.549k', title: 'Customers'),
  CardData(icon: Icons.app_registration, value: '1.423k', title: 'Products'),
  CardData(icon: Icons.pie_chart, value: '\$9745', title: 'Revenue')
];

const List<BottomNavBarItem> bottomNavBarIcons = [
  BottomNavBarItem(icon: Icons.home, label: 'Home'),
  BottomNavBarItem(icon: Icons.wallet, label: 'Wallet'),
  BottomNavBarItem(icon: Icons.bar_chart, label: 'Statistics'),
  BottomNavBarItem(icon: Icons.person, label: 'Account')
];
