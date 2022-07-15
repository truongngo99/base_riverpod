// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:auto_route/auto_route.dart';
import 'package:base_riverpod/core/presentation/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:base_riverpod/core/extension/imageX.dart';
import 'package:base_riverpod/gen/colors.gen.dart';
import 'package:sticky_headers/sticky_headers.dart';

import '../../gen/assets.gen.dart';

class EditScreenBuilder extends ConsumerWidget {
  final String topTitle;

  const EditScreenBuilder({
    Key? key,
    required this.topTitle,
    required this.body,
  }) : super(key: key);

  final Widget body;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SingleChildScrollView(
        child: StickyHeader(
          header: Container(
            color: Colors.white,
            child: _buildTopViewWidget(context, ref)
            ),
          content: Container(
            color: Colors.white,
            child: Column(
              children: [
                body,
                _buildBottomViewWidget(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTopViewWidget(BuildContext context, WidgetRef ref) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Assets.images.iconAppbar.image().iconify(36),
                  GestureDetector(
                    onTap:  () {
                      context.pushRoute(const MenuRoute());
                    },
                    child: const Icon(Icons.menu, color: Colors.black)
                    ),
                ]),
          ),
          const SizedBox(height: 10),
          Divider(color: Colors.grey[400], height: 3),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      topTitle,
                       textAlign: TextAlign.center,
                       style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                       )
                    ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  context.router.pop(true);
                },
                child: Assets.images.arrowLeft.image().iconify(18)),
            ]),
          )
        ],
      ),
    );
  }

  Widget _buildBottomViewWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 60),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Assets.images.logoColor.image(width: 120, height: 40),
        ),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.only(left: 60),
          child: Text(
              "ホーム\n\nナビテキストA\n\nナビテキストテキストテキストB\n\nナビテキストテキストC\n\nナビテキストD\n\nナビテキストテキストE",
              style: TextStyle(
                fontSize: 14,
              )),
        ),
        const SizedBox(height: 36),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 80,
          color: ColorName.grey,
          alignment: Alignment.bottomRight,
          child: const Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 20, 20),
            child: Text("© GuideNavi. All Rights Reserved."),
          ),
        ),
      ],
    );
  }
}
