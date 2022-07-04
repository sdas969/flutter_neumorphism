import 'package:flutter/material.dart';
import 'package:flutter_neumorphism/constants.dart';
import 'package:flutter_neumorphism/widgets/graph_footer.dart';
import 'package:flutter_neumorphism/widgets/graph_heading.dart';
import 'package:flutter_neumorphism/widgets/neumorphic_container.dart';
import 'package:flutter_neumorphism/widgets/neumorphic_icon.dart';

class SalesRevenue extends StatelessWidget {
  const SalesRevenue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
          body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
            stretch: true,
            expandedHeight: 350,
            pinned: true,
            centerTitle: true,
            automaticallyImplyLeading: false,
            title: Column(children: [
              ListTile(
                  trailing: const CircleAvatar(),
                  leading: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.menu)))
            ]),
            flexibleSpace: FlexibleSpaceBar(
                background: Padding(
                    padding: const EdgeInsets.only(top: kToolbarHeight + 16),
                    child: NeumorphicContainer(
                        child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(children: [
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    GraphHeading(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        title: 'Global Avg.',
                                        valueColor: Colors.blue.shade900,
                                        value: '\$ 4,732.97'),
                                    const GraphHeading(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        title: 'Market Cap',
                                        valueColor: Colors.green,
                                        value: '\$ 80.3M'),
                                    const GraphHeading(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        title: 'Volume',
                                        valueColor: Colors.red,
                                        value: '\$ 1.73M')
                                  ]),
                              Expanded(child: Image.asset('images/graph.png')),
                              Row(
                                  children: footerItems
                                      .map((item) => GraphFooter(
                                          isSelected: item.isSelected,
                                          text: item.text))
                                      .toList())
                            ])))))),
        const SliverToBoxAdapter(child: SizedBox(height: 36)),
        SliverList(
            delegate: SliverChildListDelegate.fixed([
                  const ListTile(
                      title: Text('Sales Revenue',
                          style: TextStyle(
                              color: appTextColor,
                              fontSize: 24,
                              fontWeight: FontWeight.w700)))
                ] +
                salesRevenueItems
                    .map((item) => ListTile(
                        leading: NuemorphicIcon(icon: item.icon),
                        title: Text(item.title,
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700)),
                        subtitle: Text(item.subtitle,
                            style: TextStyle(color: Colors.grey.shade700)),
                        trailing: Text(item.value,
                            style: const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w700)),
                        iconColor: appTextColor))
                    .toList()))
      ]));
}
