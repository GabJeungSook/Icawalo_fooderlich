import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';
import 'card1.dart';
import 'card2.dart';
import 'card3.dart';

// 1
class Home extends StatefulWidget {
  const Home({super.key});
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  // TODO: Add state variables and functions
  int _selectedIndex = 0;
  static List<Widget> pages = <Widget>[
    // TODO: Replace with Card1
    const Card1(),
    // TODO: Replace with Card2
    const Card2(),
    // TODO: Replace with Card3
   const Card3(),
  ];
// 9
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fooderlich',
          // 2
          style: theme.textTheme.headline3,
        ),
      ),
      // TODO: Show selected tab
      body: pages[_selectedIndex],
      // 3
      // 4
      bottomNavigationBar: BottomNavigationBar(
        // 5
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        // TODO: Set selected tab bar
        // 10
        currentIndex: _selectedIndex,
        // 11
        onTap: _onItemTapped,
        // 6
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card3',
          ),
        ],
      ),
    );
  }
}
