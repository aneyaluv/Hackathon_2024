import 'package:flutter/material.dart';
import 'package:hackathon_2024/screens/custom_sounds.dart';
import 'package:hackathon_2024/screens/tell.dart';
import '../utils/custom_widget/bottom_nav.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNav(
          onTabTapped: (value) {
            setState(() {
              _selectedIndex = value;
            });
          },
          selectedIndex: _selectedIndex),
    );
  }

  final List<Widget> screens = [
    const CustomSounds(),
    const TellScreen(),
    const TellScreen()
  ];
}
