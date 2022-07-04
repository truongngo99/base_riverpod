// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:base_riverpod/core/presentation/router/app_router.dart';
import 'package:base_riverpod/gen/assets.gen.dart';
import 'package:base_riverpod/gen/colors.gen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: AppBar().preferredSize,
        child: SafeArea(
          child: AppBar(
            leading: Assets.images.iconAppbar.image(),
            backgroundColor: ColorName.appbarBackgroundColor,
            title: const Text(
              "My Page",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            actions: [
              GestureDetector(
                onTap: () {
                  context.router.push(MenuRoute());
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
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Card(
                elevation: 3,
                child: Row(
                  children: [
                    Stack(
                      fit: StackFit.passthrough,
                      alignment: Alignment.center,
                      children: [
                        Assets.images.avatarBackground.image(),
                        Container(
                            alignment: Alignment.center,
                            child: Assets.images.avatar.image())
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "設定者名字 設定者名前",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                    "マイページ設定へ",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: ColorName.greenPrimary,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 10),
                                  child: Assets.images.next.image(),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 100,
                child: Row(
                  children: [
                    Expanded(
                      child: _HomeItem(
                          image: Assets.images.profile.image(), text: "マイページ"),
                    ),
                    Expanded(
                      child: _HomeItem(
                          image: Assets.images.faq.image(), text: "ガイドの知恵袋"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
                child: Row(
                  children: [
                    Expanded(
                      child: _HomeItem(
                          image: Assets.images.flag.image(), text: "ツアープランニング"),
                    ),
                    Expanded(
                      child: _HomeItem(
                          image: Assets.images.edit.image(), text: "ツアー振り返りログ"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
                child: Row(
                  children: [
                    Expanded(
                      child: _HomeItem(
                          image: Assets.images.star.image(), text: "スキルチェック"),
                    ),
                    Expanded(
                      child: _HomeItem(
                          image: Assets.images.docs.image(), text: "名刺制作"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
                child: Row(
                  children: [
                    Expanded(
                      child: _HomeItem(
                          image: Assets.images.sos.image(), text: "ガイドアシスタンス"),
                    ),
                    Expanded(
                      child: _HomeItem(
                          image: Assets.images.tools.image(), text: "アカウント情報"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _HomeItem extends StatelessWidget {
  final Image image;
  final String text;

  const _HomeItem({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
          border: Border.all(color: ColorName.grey),
          borderRadius: const BorderRadius.all(Radius.circular(6))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          image,
          const SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 14),
          )
        ],
      ),
    );
  }
}
