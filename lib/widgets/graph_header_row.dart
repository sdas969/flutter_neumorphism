import 'package:flutter/material.dart';
import 'package:flutter_neumorphism/widgets/graph_heading.dart';

class GraphHeaderRow extends StatelessWidget {
  const GraphHeaderRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      GraphHeading(
          crossAxisAlignment: CrossAxisAlignment.start,
          title: 'Global Avg.',
          valueColor: Colors.blue.shade900,
          value: '\$ 4,732.97'),
      const GraphHeading(
          crossAxisAlignment: CrossAxisAlignment.center,
          title: 'Market Cap',
          valueColor: Colors.green,
          value: '\$ 80.3M'),
      const GraphHeading(
          crossAxisAlignment: CrossAxisAlignment.end,
          title: 'Volume',
          valueColor: Colors.red,
          value: '\$ 1.73M')
    ]);
  }
}
