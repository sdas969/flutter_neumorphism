import 'package:flutter/material.dart';

class SalesRevenueItem {
  const SalesRevenueItem(
      {required this.icon,
      required this.subtitle,
      required this.title,
      required this.value});
  final IconData icon;
  final String title;
  final String subtitle;
  final String value;
}
