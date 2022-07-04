import 'package:flutter/material.dart';
import 'package:flutter_neumorphism/constants.dart';
import 'package:flutter_neumorphism/widgets/graph_background.dart';
import 'package:flutter_neumorphism/widgets/neumorphic_icon.dart';

class SalesRevenue extends StatelessWidget {
  const SalesRevenue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> salesRevenueWidgetList = salesRevenueItems
        .map((item) => ListTile(
            leading: NuemorphicIcon(icon: item.icon),
            title: Text(item.title,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
            subtitle: Text(item.subtitle,
                style: TextStyle(color: Colors.grey.shade700)),
            trailing: Text(item.value,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
            iconColor: appTextColor))
        .toList();
    return Scaffold(
        body: CustomScrollView(slivers: <Widget>[
      SliverAppBar(
          stretch: true,
          expandedHeight: 350,
          pinned: true,
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: appBarTitle,
          flexibleSpace: const GraphBackground()),
      const SliverToBoxAdapter(child: SizedBox(height: 36)),
      SliverList(
          delegate: SliverChildListDelegate.fixed([
        const ListTile(
            title: Text('Sales Revenue',
                style: TextStyle(
                    color: appTextColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w700))),
        ...salesRevenueWidgetList
      ]))
    ]));
  }
}
