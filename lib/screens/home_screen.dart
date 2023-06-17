import 'package:flutter/material.dart';
import 'package:flutter_care/screens/home/car_notification.dart';
import 'package:flutter_care/screens/home/cars_item.dart';
import 'package:flutter_care/screens/home/search_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedPageIndex = 0;

  void setSelectedIndex(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf9ffff),
      body: SafeArea(
        child: Column(
          children: [
            //Title
            SearchButton(),

            //Notifiction
            CarNotification(),

            //Car List
            CarItem(),
          ],
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color(0xff1C87EA),
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedPageIndex,
          onTap: (index) {
            setSelectedIndex(index);
          },
          elevation: 0,
          selectedItemColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0,
          unselectedItemColor: Colors.black87,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.construction),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.article_outlined),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}