import 'package:flutter/material.dart';
import 'package:flutter_neumorphism/constants.dart';

class NuemorphicCard extends StatefulWidget {
  const NuemorphicCard(
      {Key? key,
      required this.headingIcon,
      required this.title,
      required this.index,
      required this.value})
      : super(key: key);
  final IconData headingIcon;
  final int index;
  final String value;
  final String title;

  static const double offset = 14.0;
  static const double blurRadius = 11.0;
  static const double spreadRadius = 0.0;
  static const double borderRadius = 38.0;
  static const double containerMargin = 16.0;
  static const double cardPadding = 8.0;
  static const double elementSpacing = 16;

  @override
  State<NuemorphicCard> createState() => _NuemorphicCardState();
}

class _NuemorphicCardState extends State<NuemorphicCard> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) => Container(
      color: appBackgroundColor,
      height: (widget.index % 4 == 0 || widget.index % 4 == 3)
          ? MediaQuery.of(context).size.shortestSide / 1.6
          : MediaQuery.of(context).size.shortestSide / 1.4,
      width: MediaQuery.of(context).size.shortestSide / 2.1,
      child: Listener(
        // onPointerCancel: (event) => setState(() => isPressed = false),
        onPointerUp: (event) => setState(() => isPressed = false),
        onPointerDown: (event) => setState(() => isPressed = true),
        child: AnimatedContainer(
            duration: const Duration(milliseconds: 100),
            margin: const EdgeInsets.all(NuemorphicCard.containerMargin),
            decoration: BoxDecoration(
                color: appBackgroundColor,
                borderRadius:
                    BorderRadius.circular(NuemorphicCard.borderRadius),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: isPressed
                        ? [appBackgroundColorLight, appBackgroundColorDark]
                        : [appBackgroundColorDark, appBackgroundColorLight]),
                boxShadow: [
                  BoxShadow(
                      color: appBackgroundColorLight,
                      offset: isPressed
                          ? const Offset(
                              NuemorphicCard.offset, NuemorphicCard.offset)
                          : const Offset(
                              -NuemorphicCard.offset, -NuemorphicCard.offset),
                      blurRadius: NuemorphicCard.blurRadius,
                      spreadRadius: NuemorphicCard.spreadRadius),
                  BoxShadow(
                      color: appBackgroundColorDark,
                      offset: isPressed
                          ? const Offset(
                              -NuemorphicCard.offset, -NuemorphicCard.offset)
                          : const Offset(
                              NuemorphicCard.offset, NuemorphicCard.offset),
                      blurRadius: NuemorphicCard.blurRadius,
                      spreadRadius: NuemorphicCard.spreadRadius)
                ]),
            child: Padding(
                padding: const EdgeInsets.all(NuemorphicCard.cardPadding),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(widget.headingIcon),
                      const SizedBox(height: NuemorphicCard.elementSpacing),
                      Text(widget.value,
                          style: const TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 24)),
                      const SizedBox(height: NuemorphicCard.elementSpacing),
                      Text(widget.title)
                    ]))),
      ));
}
