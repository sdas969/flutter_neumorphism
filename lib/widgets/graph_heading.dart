import 'package:flutter/material.dart';

class GraphHeading extends StatelessWidget {
  const GraphHeading(
      {Key? key,
      required this.crossAxisAlignment,
      required this.title,
      required this.valueColor,
      required this.value})
      : super(key: key);
  final String value;
  final String title;
  final Color valueColor;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) =>
      Column(crossAxisAlignment: crossAxisAlignment, children: [
        Text(value, style: TextStyle(color: valueColor, fontSize: 18)),
        const SizedBox(height: 5),
        Text(title, style: const TextStyle(color: Colors.black))
      ]);
}
