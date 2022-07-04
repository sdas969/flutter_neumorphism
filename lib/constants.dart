import 'package:flutter/material.dart';
import 'package:flutter_neumorphism/schemas/bottom_navbar_item_schema.dart';
import 'package:flutter_neumorphism/schemas/card_data_schema.dart';
import 'package:flutter_neumorphism/schemas/graph_footer_item_schema.dart';
import 'package:flutter_neumorphism/schemas/sales_revenue_item_schema.dart';

const Color appBackgroundColor = Color(0xffdde1fc);
const Color innerCardColorDark = Color(0xffdfe1f6);
const Color innerCardColorLight = Color(0xfff6f6ff);
const Color outerCardColorDark = Color(0xffd0d2f7);
const Color outerCardColorLight = Color(0xffe8eafd);
const Color appTextColor = Color(0xff4f3db4);
const Color graphFooterSelectedColor = Color(0xff5c4bce);
const String userName = 'David';

const List<CardData> cards = [
  CardData(icon: Icons.percent, value: '230k', title: 'Sales'),
  CardData(icon: Icons.person, value: '8.549k', title: 'Customers'),
  CardData(icon: Icons.app_registration, value: '1.423k', title: 'Products'),
  CardData(icon: Icons.pie_chart, value: '\$9745', title: 'Revenue')
];

const List<GraphFooterItem> footerItems = [
  GraphFooterItem(isSelected: false, text: '1D'),
  GraphFooterItem(isSelected: true, text: '1W'),
  GraphFooterItem(isSelected: false, text: '1M'),
  GraphFooterItem(isSelected: false, text: '3M'),
  GraphFooterItem(isSelected: false, text: '6M'),
  GraphFooterItem(isSelected: false, text: '9Y'),
  GraphFooterItem(isSelected: false, text: '1Y'),
];

const List<BottomNavBarItem> bottomNavBarIcons = [
  BottomNavBarItem(icon: Icons.home, label: 'Home'),
  BottomNavBarItem(icon: Icons.wallet, label: 'Wallet'),
  BottomNavBarItem(icon: Icons.bar_chart, label: 'Statistics'),
  BottomNavBarItem(icon: Icons.person, label: 'Account')
];

const List<SalesRevenueItem> salesRevenueItems = [
  SalesRevenueItem(
      icon: Icons.percent,
      subtitle: 'Since last week',
      title: 'Sales',
      value: '230k'),
  SalesRevenueItem(
      icon: Icons.person,
      subtitle: 'Since last week',
      title: 'Customers',
      value: '8.549k'),
  SalesRevenueItem(
      icon: Icons.app_registration,
      subtitle: 'Since last week',
      title: 'Products',
      value: '1.423k'),
  SalesRevenueItem(
      icon: Icons.pie_chart,
      subtitle: 'Since last week',
      title: 'Revenue',
      value: '\$9745')
];
