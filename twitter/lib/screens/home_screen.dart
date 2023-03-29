import 'package:flutter/material.dart';
import '../widgets/side_bar_menu.dart'; // Import SideBarMenu

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      drawer: SideBarMenu(), // Add the SideBarMenu
      body: Center(
        child: Text(''),
      ),
    );
  }
}
