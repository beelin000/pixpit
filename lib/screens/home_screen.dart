import 'package:flutter/material.dart';
import 'package:pixpit_app/screens/screens.dart';

class HomeScreen extends StatefulWidget {
  static const String tag = "home_screen";
  // bool loading = true;
  // User user;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  List<Widget> pages = [
    HomeScreen(),
    SearchScreen(),
    PostDetailsScreen(),
    // CreatePostScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];

  Map<int, String> map = {
    0: "HomeScreen",
    1: "SearchScreen",
    2: "NotificationScreen",
    3: "PostDetailsScreen",
    4: "ProfileScreen",
  };

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("pixpit"),
      ),
      body: Center(child: Text(map[_selectedIndex])),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            title: Text("Home"),
            // activeIcon: Icon(Icons.home, color: Colors.blue,)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.black),
            title: Text("Search"),
            // activeIcon: Icon(Icons.search, color: Colors.blue,)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add, color: Colors.black),
            title: Text("Add"),
            // activeIcon: Icon(Icons.add, color: Colors.blue,)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications, color: Colors.black),
            title: Text("Notifications"),
            // activeIcon: Icon(Icons.notifications, color: Colors.blue,)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity, color: Colors.black),
            title: Text("Profile"),
            // activeIcon: Icon(Icons.perm_identity, color: Colors.blue,)
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
