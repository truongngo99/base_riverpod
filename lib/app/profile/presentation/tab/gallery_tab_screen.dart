import 'package:base_riverpod/app/profile/notifier/gallery_tab_notifier.dart';
import 'package:base_riverpod/core/extension/imageX.dart';
import 'package:base_riverpod/core/extension/stringX.dart';
import 'package:base_riverpod/gen/assets.gen.dart';
import 'package:base_riverpod/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GalleryTabScreen extends ConsumerStatefulWidget {
  GalleryTabScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<GalleryTabScreen> createState() => _GalleryTabScreenState();
}

class _GalleryTabScreenState extends ConsumerState<GalleryTabScreen>
    with SingleTickerProviderStateMixin {
  final Map<String, String> _bottomNavigationBarItems = {
    Assets.images.home.path: "media",
    Assets.images.blackMapPin.path: "gallery",
  };

  ShapeBorder? bottomBarShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
  );
  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;
  EdgeInsets padding = const EdgeInsets.all(12);

  int _selectedItemPosition = 0;
  final List<String> myTabs = <String>["日付順", "アルバム"];
  Color selectedColor = Colors.black;
  Color unselectedColor = ColorName.grey;

  int cupertinoTabBarValue = 0;
  int cupertinoTabBarValueGetter() => cupertinoTabBarValue;

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);

    _tabController.addListener(() {
      setState(() {
        _selectedItemPosition = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _buildBody(ref);
  }

  Widget _buildBody(WidgetRef ref) {
    double tabbarWidth = MediaQuery.of(context).size.width / 1.5;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text("写真",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Assets.images.editProfile.image().iconify(),
            )
          ]),
        ),
        SizedBox(
          width: tabbarWidth,
          height: 32,
          child: TabBar(
            controller: _tabController,
            // give the indicator a decoration (color and border radius)
            indicator: BoxDecoration(
              border: Border.all(color: ColorName.grey),
              borderRadius: BorderRadius.circular(
                25.0,
              ),
              color: Colors.black,
            ),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            labelPadding: const EdgeInsets.symmetric(horizontal: 10),
            indicatorPadding: const EdgeInsets.symmetric(horizontal: 10),
            tabs: [for (var tab in myTabs) _buildTab(tab, myTabs.indexOf(tab))],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: _selectedItemPosition == 0 ? _buildImageGridWidget(ref) : _buildImageGridWidget(ref, false)
          ),
      ],
    );
  }

  Widget _buildTab(String text, int index) {
    final selected = index == _selectedItemPosition;
    return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
                color: !selected ? ColorName.grey : Colors.transparent)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                  fontWeight: selected ? FontWeight.bold : FontWeight.normal,
                  fontSize: 14),
              textAlign: TextAlign.center,
            ),
            if (selected)
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Assets.images.dropdown.image(height: 16, width: 16),
              )
          ],
        ));
  }

  Widget _buildImageGridWidget(WidgetRef ref, [bool byDate = true]) {
    final mediaByDate = byDate ? ref.watch(galleryNotifierProvider).mediaByDate : ref.watch(galleryNotifierProvider).mediaByAlbums;
    return Column(
      children: [
        ...mediaByDate.entries.map((e) => Padding(
          padding: const EdgeInsets.fromLTRB(0, 8, 0, 16),
          child: 
            _buildImageGridElement(e.key, e.value, byDate)
        )),
      ],
    );
  }

  Widget _buildImageGridElement(String title, List<String> data, [bool byDate = true]) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(byDate ? title.mapDate() : title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: byDate ? FontWeight.normal : FontWeight.bold
        ),),
        const SizedBox(height: 8),
        GridView.count(
          primary: false,
          shrinkWrap: true,
          crossAxisSpacing: 4,
          mainAxisSpacing: 3,
          crossAxisCount: 3,
          children: [
          for (var e in data)
            SizedBox(
              width: 60,
              height: 60,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: FadeInImage.assetNetwork(
                  placeholder: Assets.images.placeholderVjp.path,
                  image: e,
                  fit: BoxFit.fill,
                ),
              ),
            ),
        ]),
      ]),
    );
  }

  Widget _buildAlbumWidget(WidgetRef ref) {
    return Column(
      children: [Text("album")],
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
