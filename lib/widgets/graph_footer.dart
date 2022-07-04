import 'package:flutter/material.dart';
import 'package:flutter_neumorphism/constants.dart';

class GraphFooter extends StatelessWidget {
  const GraphFooter({Key? key, required this.isSelected, required this.text})
      : super(key: key);
  final String text;
  final bool isSelected;

  @override
  Widget build(BuildContext context) => Expanded(
      child: MaterialButton(
          onPressed: () {},
          textColor: isSelected ? Colors.white : Colors.grey,
          padding: EdgeInsets.zero,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: isSelected ? graphFooterSelectedColor : null,
          child: Text(text)));
}
