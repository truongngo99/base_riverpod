import 'package:base_riverpod/gen/assets.gen.dart';
import 'package:flutter/material.dart';

import '../../gen/colors.gen.dart';
import 'package:auto_route/auto_route.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: AppBar().preferredSize,
          child: SafeArea(
            child: AppBar(
              leading: Assets.images.iconAppbar.image(),
              backgroundColor: ColorName.appbarBackgroundColor,
              actions: [
                GestureDetector(
                  onTap: () {
                    context.router.pop();
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: SizedBox(
                      height: 40,
                      width: 40,
                      child: Icon(Icons.close, color: Colors.black)),
                  ),
                )
              ],
              elevation: 0.2,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "運営会社",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Assets.images.arrow.image()
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
                child: Divider(
                  color: Colors.black,
                  thickness: 0.4,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "プライバシーポリシー",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Assets.images.arrow.image()
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
                child: Divider(
                  color: Colors.black,
                  thickness: 0.4,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "利用規約",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Assets.images.arrow.image()
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
                child: Divider(
                  color: Colors.black,
                  thickness: 0.4,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "通知設定",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Assets.images.arrow.image()
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
                child: Divider(
                  color: Colors.black,
                  thickness: 0.4,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "パージョン",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "ver 1.0.1",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
                child: Divider(
                  color: Colors.black,
                  thickness: 0.4,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "ログアウト",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Assets.images.arrow.image()
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
                child: Divider(
                  color: Colors.black,
                  thickness: 0.4,
                ),
              ),
            ],
          ),
        ));
  }
}
