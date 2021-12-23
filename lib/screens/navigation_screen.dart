import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:jb_notify/screens/new_screen.dart';
import 'package:jb_notify/screens/test_screen.dart';
import 'package:jb_notify/widgets/drawer.dart';
import 'students_screen.dart';
import 'parents_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  _NavigationScreenState createState() => _NavigationScreenState();
  static const routeName = '/navigation_page';
}

class _NavigationScreenState extends State<NavigationScreen> {
  final _pages = [
    StudentsScreen(),
    TestScreen(),
    //ParentsScreen()
    //TeachersScreen(),
    NewScreen(),
  ];

  int _selectedPageIndex = 0;

  // void _selectedPage(int index) {
  //   setState(() {
  //     _selectedPageIndex = index;
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "All Notices",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600),
            ),
            backgroundColor: Color.fromRGBO(92, 135, 212, 1),
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.white),
          ),
          drawer: AppDrawer(),
          body: _pages[_selectedPageIndex],
//Bottom Navigation Bar code
          bottomNavigationBar: BottomNavyBar(
            selectedIndex: _selectedPageIndex,
            showElevation: false,
            itemCornerRadius: 24,
            curve: Curves.ease,
            onItemSelected: (index) {
              setState(() {
                _selectedPageIndex = index;
              });
            },
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            items: [
              BottomNavyBarItem(
                title: Text('Student'),
                icon: Icon(Icons.person_rounded),
                inactiveColor: Colors.black,
                activeColor: Colors.blueGrey,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                title: Text('Teachers'),
                icon: Icon(Icons.school),
                inactiveColor: Colors.black,
                activeColor: Colors.red,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                title: Text('Parents'),
                icon: Icon(Icons.people_alt_outlined),
                inactiveColor: Colors.black,
                activeColor: Colors.purpleAccent,
                textAlign: TextAlign.center,
              ),
            ],
          )),
    );
  }
}
