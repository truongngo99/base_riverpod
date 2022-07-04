// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:base_riverpod/auth/presentation/login_notifier.dart';
import 'package:base_riverpod/core/presentation/app_widget.dart';
import 'package:base_riverpod/profile/presentation/profile_screen.dart';
import 'package:flutter/material.dart';

import 'package:base_riverpod/gen/assets.gen.dart';
import 'package:base_riverpod/gen/colors.gen.dart';
import 'package:base_riverpod/theme/colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/presentation/router/app_router.dart';

class CustomInputField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;

  const CustomInputField({
    Key? key,
    required this.hintText,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: ColorName.orangePrimary, width: 1)),
          contentPadding: const EdgeInsets.all(10),
          border: const OutlineInputBorder(),
          hintStyle:
              const TextStyle(fontSize: 16.0, color: ColorName.greyMaterial),
          hintText: hintText),
    );
  }
}

class LoginScreen extends ConsumerWidget {
  LoginScreen({Key? key}) : super(key: key);

  final TextEditingController usernameText = TextEditingController();
  final TextEditingController passwordText = TextEditingController();


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final state = ref.read(loginNotifierProvider.notifier);
    if (ref.watch(loginNotifierProvider).isLoggedIn) {
      context.router.replace(const ProfileRoute());
    }
    usernameText.text = 'demo@guide-navi.local';
    passwordText.text = 'Password123';

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(tag: 'guide-navi', child: Assets.images.guideNavi.image()),
              Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: CustomInputField(
                    controller: usernameText,
                    hintText: 'メールアドレス',
                  )),
            Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: CustomInputField(
                    controller: passwordText,
                    hintText: 'パスワード',
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 36),
                child: SizedBox(
                  height: 44,
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      ref.read(loginNotifierProvider.notifier).login(usernameText.text, passwordText.text);
                    },
                    style: ButtonStyle(
                        backgroundColor: ColorConstants.colorOrangeMaterial,
                        foregroundColor: ColorConstants.colorWhiteMaterial),
                    child: const Text("ログアウト"),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "パスワードを忘れた方はこちら",
                  style: TextStyle(color: ColorName.orangePrimary),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: SizedBox(
                  height: 44,
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {
                    },
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(const BorderSide(
                          color: ColorName.orangePrimary,
                          width: 1.0,
                          style: BorderStyle.solid)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                      backgroundColor: ColorConstants.colorWhiteMaterial,
                      foregroundColor: ColorConstants.colorOrangeMaterial,
                    ),
                    child: const Text("ガイドナビとは"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
