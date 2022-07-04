import 'package:flutter/material.dart';
import 'package:flutter_neumorphism/constants.dart';
import 'package:flutter_neumorphism/widgets/graph_footer.dart';

class GraphFooterRow extends StatelessWidget {
  const GraphFooterRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        children: footerItems
            .map((item) =>
                GraphFooter(isSelected: item.isSelected, text: item.text))
            .toList());
  }
}
