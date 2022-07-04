
import 'package:base_riverpod/core/presentation/router/app_router.dart';
import 'package:base_riverpod/gen/assets.gen.dart';
import 'package:base_riverpod/gen/colors.gen.dart';
import 'package:base_riverpod/profile/Tab/activities_tab_screen.dart';
import 'package:base_riverpod/profile/Tab/gallery_tab_screen.dart';
import 'package:base_riverpod/profile/Tab/home_tab_screen.dart';
import 'package:base_riverpod/profile/Tab/skill_tab_screen.dart';
import 'package:base_riverpod/profile/Tab/travel_spot_tab_screen.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final BorderRadius _borderRadius = const BorderRadius.only(
    topLeft: Radius.circular(25),
    topRight: Radius.circular(25),
  );

  ShapeBorder? bottomBarShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
  );
  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;
  EdgeInsets padding = const EdgeInsets.all(12);

  int _selectedItemPosition = 0;
  PageController _pageController = PageController();
  SnakeShape snakeShape = SnakeShape.circle;

  bool showSelectedLabels = true;
  bool showUnselectedLabels = true;

  Color selectedColor = Colors.black;
  Color unselectedColor = ColorName.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
           appBar: PreferredSize(
        preferredSize: AppBar().preferredSize,
        child: AppBar(
          leading: Transform.translate(
            offset: const Offset(15, 0),
            child: Assets.images.markK.image()),
          titleSpacing: 20,
          leadingWidth: 32,
          backgroundColor: ColorName.profileBackground,
          actions: [
            GestureDetector(
              onTap: () {
                context.router.push(const MenuRoute());
              },
              child: const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(Icons.menu, color: Colors.black),
              ),
            )
          ],
          elevation: 0.2,
        ),
      ),
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        child: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            HomeTabScreen(),
            TravelSpotTabScreen(),
            SkillTabScreen(),
            ActivitiesTabScreen(),
            GalleryTabScreen(),
          ],
        ),
      ),
      bottomNavigationBar: SnakeNavigationBar.color(
        elevation: 2,
        behaviour: snakeBarStyle,
        snakeShape: snakeShape,
        shape: bottomBarShape,
        snakeViewColor: ColorName.appbarBackgroundColor,
        shadowColor: ColorName.grey,
        padding: padding,
        selectedItemColor: selectedColor,
        unselectedItemColor: unselectedColor,
        showUnselectedLabels: true,
        showSelectedLabels: false,
        currentIndex: _selectedItemPosition,
        onTap: (index) => setState(() {
          _selectedItemPosition = index;
          _pageController.animateToPage(index, duration: const Duration(milliseconds: 100), curve: Curves.linear);
        }),
          
        items: [
          BottomNavigationBarItem(icon: ImageIcon(
              AssetImage(Assets.images.home.path),
              size: 24,
          ), label: "ホーム"),
          BottomNavigationBarItem(icon: ImageIcon(
              AssetImage(Assets.images.mapPin.path),
              size: 24,
          ),label: "観光地"),
          BottomNavigationBarItem(icon: ImageIcon(
              AssetImage(Assets.images.award.path),
              size: 24,
          ), label: "スキル"),
          BottomNavigationBarItem(icon: ImageIcon(
              AssetImage(Assets.images.fileText.path),
              size: 24,
          ), label: "活動"),
          BottomNavigationBarItem(icon: ImageIcon(
              AssetImage(Assets.images.imagePng.path),
              size: 24,
          ), label: "写真"),
        ],
        selectedLabelStyle: const TextStyle(fontSize: 14),
        unselectedLabelStyle: const TextStyle(fontSize: 12),

    ),
      
    );
  }
}

