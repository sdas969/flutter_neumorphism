import 'package:flutter/material.dart';
import 'package:flutter_neumorphism/constants.dart';
import 'package:flutter_neumorphism/widgets/graph_footer_row.dart';
import 'package:flutter_neumorphism/widgets/graph_header_row.dart';
import 'package:flutter_neumorphism/widgets/neumorphic_container.dart';

class GraphBackground extends StatelessWidget {
  const GraphBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
        background: Padding(
            padding: const EdgeInsets.only(top: kToolbarHeight + 16),
            child: NeumorphicContainer(
                child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(children: [
                      const GraphHeaderRow(),
                      Expanded(child: Image.asset(graphImageString)),
                      const GraphFooterRow()
                    ])))));
  }
}
