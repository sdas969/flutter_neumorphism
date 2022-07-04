import 'package:flutter/material.dart';
import 'package:flutter_neumorphism/constants.dart';

class NuemorphicIcon extends StatelessWidget {
  const NuemorphicIcon({Key? key, required this.icon}) : super(key: key);
  final IconData icon;
  static const double offset = 14.0;
  static const double blurRadius = 11.0;
  static const double spreadRadius = 0.0;
  static const double borderRadius = 150.0;
  static const double containerMargin = 16.0;
  static const double elementSpacing = 16;

  @override
  Widget build(BuildContext context) => Container(
      color: appBackgroundColor,
      child: Container(
          color: appBackgroundColor,
          child: Container(
              decoration: BoxDecoration(
                  color: appBackgroundColor,
                  borderRadius: BorderRadius.circular(borderRadius),
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [innerCardColorDark, innerCardColorLight]),
                  boxShadow: const [
                    BoxShadow(
                        color: outerCardColorLight,
                        offset: Offset(-offset, -offset),
                        blurRadius: blurRadius,
                        spreadRadius: spreadRadius),
                    BoxShadow(
                        color: outerCardColorDark,
                        offset: Offset(offset, offset),
                        blurRadius: blurRadius,
                        spreadRadius: spreadRadius)
                  ]),
              child: Padding(
                  padding: const EdgeInsets.all(elementSpacing),
                  child: Icon(icon)))));
}
