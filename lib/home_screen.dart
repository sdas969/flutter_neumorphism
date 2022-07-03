import 'package:flutter/material.dart';
import 'package:flutter_neumorphism/constants.dart';
import 'package:flutter_neumorphism/neumorphic_card.dart';
import 'package:flutter_neumorphism/neumorphic_icon.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: appBackgroundColor,
          selectedItemColor: appTextColor,
          unselectedItemColor: appTextColor,
          showSelectedLabels: false,
          items: List.generate(
              bottomNavBarIcons.length,
              (index) => BottomNavigationBarItem(
                  backgroundColor: appBackgroundColor,
                  label: bottomNavBarIcons[index].label,
                  icon: NuemorphicIcon(icon: bottomNavBarIcons[index].icon)))),
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
            stretch: true,
            expandedHeight: 200,
            centerTitle: true,
            automaticallyImplyLeading: false,
            title: ListTile(
                trailing: const CircleAvatar(),
                leading:
                    IconButton(onPressed: () {}, icon: const Icon(Icons.menu))),
            bottom: AppBar(
                automaticallyImplyLeading: false,
                title: ListTile(
                    title: const Text('Hello $userName',
                        style: TextStyle(
                            fontSize: 36, fontWeight: FontWeight.w700)),
                    subtitle: const Text('Welcome Back!'),
                    trailing: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.settings))))),
        const SliverToBoxAdapter(child: SizedBox(height: 36)),
        SliverFillRemaining(
            child: Wrap(
                runAlignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.start,
                alignment: WrapAlignment.center,
                children: List.generate(
                    cards.length,
                    (index) => GestureDetector(
                          onTap: () {},
                          child: NuemorphicCard(
                              index: index,
                              value: cards[index].value,
                              headingIcon: cards[index].icon,
                              title: cards[index].title),
                        ))))
      ]));
}
