import 'package:flutter/material.dart';
import 'package:flutter_neumorphism/constants.dart';
import 'package:flutter_neumorphism/ui/sales_revenue.dart';
import 'package:flutter_neumorphism/widgets/neumorphic_card.dart';
import 'package:flutter_neumorphism/widgets/neumorphic_icon.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  changeCurrentIndex(index) => setState(() => _currentIndex = index);

  @override
  Widget build(BuildContext context) {
    BottomNavigationBar bottomNavigationBar = BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => changeCurrentIndex(index),
        selectedFontSize: 12,
        showUnselectedLabels: false,
        backgroundColor: appBackgroundColor,
        selectedItemColor: appTextColor,
        unselectedItemColor: appTextColor,
        showSelectedLabels: false,
        items: List.generate(
            bottomNavBarIcons.length,
            (index) => BottomNavigationBarItem(
                backgroundColor: appBackgroundColor,
                label: bottomNavBarIcons[index].label,
                icon: NuemorphicIcon(icon: bottomNavBarIcons[index].icon))));

    return Scaffold(
        bottomNavigationBar: bottomNavigationBar,
        body: CustomScrollView(slivers: <Widget>[
          SliverAppBar(
              stretch: true,
              expandedHeight: 200,
              centerTitle: true,
              automaticallyImplyLeading: false,
              title: ListTile(
                  trailing: const CircleAvatar(),
                  leading: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.menu))),
              bottom: AppBar(
                  automaticallyImplyLeading: false,
                  title: ListTile(
                      title: const Text('Hello $userName',
                          style: TextStyle(
                              fontSize: 36, fontWeight: FontWeight.w700)),
                      subtitle: const Text('Welcome Back!'),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.settings))))),
          const SliverToBoxAdapter(child: SizedBox(height: 36)),
          SliverFillRemaining(
              child: Wrap(
                  runAlignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  alignment: WrapAlignment.center,
                  children: List.generate(
                      cards.length,
                      (index) => GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SalesRevenue())),
                          child: NuemorphicCard(
                              index: index,
                              value: cards[index].value,
                              headingIcon: cards[index].icon,
                              title: cards[index].title)))))
        ]));
  }
}
