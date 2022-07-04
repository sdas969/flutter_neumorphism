import 'package:flutter/material.dart';
import 'package:flutter_neumorphism/constants.dart';

class NeumorphicContainer extends StatefulWidget {
  const NeumorphicContainer({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;

  static const double offset = 14.0;
  static const double blurRadius = 20.0;
  static const double spreadRadius = 0.0;
  static const double borderRadius = 38.0;
  static const double containerMargin = 16.0;
  static const double cardPadding = 8.0;
  static const double elementSpacing = 16;

  @override
  State<NeumorphicContainer> createState() => _NeumorphicContainerState();
}

class _NeumorphicContainerState extends State<NeumorphicContainer> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) => Container(
      color: appBackgroundColor,
      child: Listener(
          onPointerUp: (event) => setState(() => isPressed = false),
          onPointerDown: (event) => setState(() => isPressed = true),
          child: AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              margin: const EdgeInsets.all(NeumorphicContainer.containerMargin),
              decoration: BoxDecoration(
                  color: appBackgroundColor,
                  borderRadius:
                      BorderRadius.circular(NeumorphicContainer.borderRadius),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: isPressed
                          ? [innerCardColorLight, innerCardColorDark]
                          : [innerCardColorDark, innerCardColorLight]),
                  boxShadow: [
                    BoxShadow(
                        color: outerCardColorLight,
                        offset: isPressed
                            ? const Offset(NeumorphicContainer.offset,
                                NeumorphicContainer.offset)
                            : const Offset(-NeumorphicContainer.offset,
                                -NeumorphicContainer.offset),
                        blurRadius: NeumorphicContainer.blurRadius,
                        spreadRadius: NeumorphicContainer.spreadRadius),
                    BoxShadow(
                        color: outerCardColorDark,
                        offset: isPressed
                            ? const Offset(-NeumorphicContainer.offset,
                                -NeumorphicContainer.offset)
                            : const Offset(NeumorphicContainer.offset,
                                NeumorphicContainer.offset),
                        blurRadius: NeumorphicContainer.blurRadius,
                        spreadRadius: NeumorphicContainer.spreadRadius)
                  ]),
              child: Padding(
                  padding:
                      const EdgeInsets.all(NeumorphicContainer.cardPadding),
                  child: widget.child))));
}
