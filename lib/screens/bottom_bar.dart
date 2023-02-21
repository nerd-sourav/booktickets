import 'package:booktickets/screens/home_screen.dart';
import 'package:booktickets/screens/search_screen.dart';
import 'package:booktickets/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:rounded_tabbar_widget/rounded_tabbar_widget.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const Text("Ticket"),
    const Text("Profile")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RoundedTabbarWidget(
          itemNormalColor: const Color(0xFF526480),
          itemSelectedColor: Colors.blueGrey,
          tabBarBackgroundColor: Styles.bgColor,
          tabIcons: const [
            FluentSystemIcons.ic_fluent_home_regular,
            FluentSystemIcons.ic_fluent_search_regular,
            FluentSystemIcons.ic_fluent_ticket_regular,
            FluentSystemIcons.ic_fluent_person_regular,
          ],
          pages: const [
            HomeScreen(),
            SearchScreen(),
            SearchScreen(),
            SearchScreen(),
          ],
          selectedIndex: 0,
          onTabItemIndexChanged: (int index) {
            print('Index: $index');
          },
        ),
        // _widgetOptions[_selectedIndex],
      ),
      // bottomNavigationBar: SalomonBottomBar(
      //   currentIndex: _selectedIndex,
      //   onTap: (i) => setState(() => _selectedIndex = i),
      //   items: [
      //     /// Home
      //     SalomonBottomBarItem(
      //       icon: Icon(Icons.home),
      //       title: Text("Home"),
      //       selectedColor: Colors.purple,
      //     ),

      //     /// Likes
      //     SalomonBottomBarItem(
      //       icon: Icon(Icons.favorite_border),
      //       title: Text("Likes"),
      //       selectedColor: Colors.pink,
      //     ),

      //     /// Search
      //     SalomonBottomBarItem(
      //       icon: Icon(Icons.search),
      //       title: Text("Search"),
      //       selectedColor: Colors.orange,
      //     ),

      //     /// Profile
      //     SalomonBottomBarItem(
      //       icon: Icon(Icons.person),
      //       title: Text("Profile"),
      //       selectedColor: Colors.teal,
      //     ),
      //   ],
      // ),
      // bottomNavigationBar: BottomNavigationBar(
      //   onTap: _onItemTapped,
      //   type: BottomNavigationBarType.fixed,
      //   elevation: 10,
      //   currentIndex: _selectedIndex,
      //   showSelectedLabels: false,
      //   showUnselectedLabels: false,
      //   selectedItemColor: Colors.blueGrey,
      //   unselectedItemColor: const Color(0xFF526480),
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
      //       activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
      //       label: "Home",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
      //       activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
      //       label: "Search",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
      //       activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
      //       label: "Ticket",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
      //       activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
      //       label: "Profile",
      //     ),
      //   ],
      // ),
    );
  }
}
