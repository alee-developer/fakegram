import 'package:fakegram/views/screens/explore/explore_screen.dart';
import 'package:fakegram/views/screens/post/add_post_screen.dart';
import 'package:fakegram/views/screens/profile/profile_screen.dart';
import 'package:fakegram/views/screens/reels/reels_screen.dart';
import 'package:flutter/material.dart';

import '../../../models/landing/landing_item_model.dart';
import '../home/home_screen.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  var _selectedScreen = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedScreen,
        type: BottomNavigationBarType.fixed,
        items: bottomNavItems,
        onTap: (index){
          _selectedScreen = index;
          setState(() {

          });
        },
      ),
      body: onScreenChanged(),
    );
  }

  Widget onScreenChanged() {
    return _selectedScreen == 0
        ? HomeScreen()
        : _selectedScreen == 1
            ? ExploreScreen()
            : _selectedScreen == 2
                ? AddPostScreen()
                : _selectedScreen == 3
                    ? ReelsScreen()
                    : ProfileScreen();
  }
}
