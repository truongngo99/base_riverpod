// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:base_riverpod/gen/assets.gen.dart';
import 'package:base_riverpod/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class EditableTabBar extends StatefulWidget {
  final ValueSetter<int> callback; 
  final int initIndex;
  final List<String> elements;

  const EditableTabBar({
    Key? key,
    required this.elements,
    required this.initIndex,
    required this.callback,
  }) : super(key: key);

  @override
  State<EditableTabBar> createState() => _EditableTabBarState();
}

class _EditableTabBarState extends State<EditableTabBar> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedItemPosition = 0;

  @override
  void initState() {
    _selectedItemPosition = widget.initIndex;
    super.initState();
    _tabController = TabController(length: widget.elements.length, vsync: this);
    _tabController.index = _selectedItemPosition;

    _tabController.addListener(() {
      setState(() {
        _selectedItemPosition = _tabController.index;
        widget.callback(_tabController.index);
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
    double tabbarWidth = MediaQuery.of(context).size.width ;

    return SizedBox(
          width: tabbarWidth,
          height: 44,
          child: TabBar(
            controller: _tabController,
            // give the indicator a decoration (color and border radius)
            indicator: BoxDecoration(
              border: Border.all(color: ColorName.orangePrimary),
              borderRadius: _selectedItemPosition == 0 ? const BorderRadius.horizontal(left: Radius.circular(8)) : const BorderRadius.horizontal(right: Radius.circular(8)),
              color: ColorName.orangePrimary.withAlpha(40),
            ),
            labelColor:  ColorName.orangePrimary,
            unselectedLabelColor: Colors.black,
            labelPadding: const EdgeInsets.all(0),
            indicatorPadding: const EdgeInsets.all(0),
            tabs: [for (var tab in widget.elements) _buildTab(tab, widget.elements.indexOf(tab))],
          ),
        );
  }
  
Widget _buildTab(String text, int index) {
    final selected = index == _selectedItemPosition;
    return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: _selectedItemPosition == 1 ? const BorderRadius.horizontal(left: Radius.circular(8)) : const BorderRadius.horizontal(right: Radius.circular(8)),
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
          ],
        ));
  }

}