import 'package:fakegram/views/utils/constants/image_path.dart';
import 'package:flutter/material.dart';

final bottomNavItems = [
  BottomNavigationBarItem(
      label: "",
      icon: _iconView(homeIcon),
      activeIcon: _iconView(activeHomeIcon)),
  BottomNavigationBarItem(
      label: "",
      icon: _iconView(exploreIcon),
      activeIcon: _iconView(activeExploreIcon)),
  BottomNavigationBarItem(
      label: "",
      icon: _iconView(postIcon),
      activeIcon: _iconView(activePostIcon)),
  BottomNavigationBarItem(
      label: "",
      icon: _iconView(reelIcon),
      activeIcon: _iconView(activeReelIcon)),
  BottomNavigationBarItem(
      label: "",
      icon: _iconView(profileIcon),
      activeIcon: _iconView(activeProfileIcon)),
];


Widget _iconView(String image){
  return Image.asset(image,height: 30,width: 30,fit: BoxFit.cover,);
}