import 'package:flutter/material.dart';
import 'package:flutter_neumorphism/constants.dart';

class NuemorphicIcon extends StatelessWidget {
  const NuemorphicIcon({Key? key, required this.icon}) : super(key: key);
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appBackgroundColor,
      alignment: Alignment.center,
      transformAlignment: Alignment.center,
      child: Container(
        color: appBackgroundColor,
        child: Container(
          decoration: BoxDecoration(
            color: appBackgroundColor,
            borderRadius: BorderRadius.circular(150),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xffd8dbfa),
                Color(0xffe6e9fc),
                Color(0xffe6e9fc),
                Color(0xffe6e9fc),
              ],
            ),
            boxShadow: const [
              BoxShadow(
                color: Color(0xffe6e9fc),
                offset: Offset(-14, -14),
                blurRadius: 11,
                spreadRadius: 0.0,
              ),
              BoxShadow(
                color: Color(0xffd8dbfa),
                offset: Offset(14, 14),
                blurRadius: 11,
                spreadRadius: 0.0,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Icon(icon),
          ),
        ),
      ),
    );
  }
}
