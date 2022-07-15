import 'package:base_riverpod/core/presentation/router/app_router.dart';
import 'package:base_riverpod/gen/assets.gen.dart';
import 'package:base_riverpod/gen/colors.gen.dart';
import 'package:base_riverpod/profile/presentation/notifier/home_tab_notifier.dart';
import 'package:base_riverpod/profile/presentation/tab/activities_tab_screen.dart';
import 'package:base_riverpod/profile/presentation/tab/gallery_tab_screen.dart';
import 'package:base_riverpod/profile/presentation/tab/home_tab_screen.dart';
import 'package:base_riverpod/profile/presentation/tab/skill_tab_screen.dart';
import 'package:base_riverpod/profile/presentation/tab/travel_spot_tab_screen.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'profile_tab_builder.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  final Map<String, String> _bottomNavigationBarItems = {
    Assets.images.home.path: "ホーム",
    Assets.images.blackMapPin.path: "観光地",
    Assets.images.blackAward.path: "スキル",
    Assets.images.blackFileText.path: "活動",
    Assets.images.blackImage.path: "写真",
  };

  final PageController _pageController = PageController();

  ShapeBorder? bottomBarShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
  );
  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;
  EdgeInsets padding = const EdgeInsets.all(12);

  int _selectedItemPosition = 0;
  SnakeShape snakeShape = SnakeShape.circle;

  bool showSelectedLabels = true;
  bool showUnselectedLabels = true;

  Color selectedColor = Colors.black;
  Color unselectedColor = ColorName.grey;

  @override
  void initState() {
    super.initState();

  }

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
              ProfileTabBuilder(body: HomeTabScreen()),
              ProfileTabBuilder(body: TravelSpotTabScreen()),
              ProfileTabBuilder(body: SkillTabScreen()),
              const ProfileTabBuilder(body: ActivitiesTabScreen()),
              ProfileTabBuilder(body: GalleryTabScreen()),
            ],
          ),
        ),
        bottomNavigationBar: 
        SnakeNavigationBar.color(
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
            _pageController.animateToPage(index,
                duration: const Duration(milliseconds: 100),
                curve: Curves.linear);
          }),
          items: _buildBottomNavigationChilds(),
          selectedLabelStyle: const TextStyle(fontSize: 14),
          unselectedLabelStyle: const TextStyle(fontSize: 12),
        ),
      );
  }

  List<BottomNavigationBarItem> _buildBottomNavigationChilds() {
    List<BottomNavigationBarItem> list = [];
    for (String key in _bottomNavigationBarItems.keys) {
      list.add(customNavigationBarItem(key, _bottomNavigationBarItems[key]));
    }
    return list;
  }

  BottomNavigationBarItem customNavigationBarItem(
      String assetPath, String? label) {
    return BottomNavigationBarItem(
        icon: ImageIcon(
          AssetImage(assetPath),
          size: 24,
        ),
        label: label);
  }
}
