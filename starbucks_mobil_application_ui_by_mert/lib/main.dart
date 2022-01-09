import 'package:flutter/material.dart';
import 'package:starbucks_mobil_application_ui_by_mert/card_page.dart';
import 'package:starbucks_mobil_application_ui_by_mert/main_page.dart';
import 'package:starbucks_mobil_application_ui_by_mert/menu_page.dart';
import 'package:starbucks_mobil_application_ui_by_mert/store_page.dart';

void main() => runApp(const StarbucksApp());

class StarbucksApp extends StatefulWidget {
  const StarbucksApp({Key? key}) : super(key: key);

  @override
  State<StarbucksApp> createState() => _StarbucksAppState();
}

class _StarbucksAppState extends State<StarbucksApp> {
  int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    final _kTabPages = [
      const MainPage(),
      const MenuPage(),
      const CardPage(),
      const StorePage(),
    ];
    final _kBottomNavBarItems = [
      const BottomNavigationBarItem(
          icon: Icon(Icons.star_border), label: 'Ana Sayfa'),
      const BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menü'),
      const BottomNavigationBarItem(
          icon: Icon(Icons.card_giftcard_rounded), label: 'Card'),
      const BottomNavigationBarItem(
          icon: Icon(Icons.store_outlined), label: 'Mağazalar'),
    ];
    assert(_kTabPages.length == _kBottomNavBarItems.length);
    final bottomNavBar = BottomNavigationBar(
      items: _kBottomNavBarItems,
      currentIndex: _currentTabIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _currentTabIndex = index;
        });
      },
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _kTabPages[_currentTabIndex],
        bottomNavigationBar: bottomNavBar,
      ),
    );
  }
}
