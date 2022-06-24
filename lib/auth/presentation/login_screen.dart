// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:base_riverpod/gen/assets.gen.dart';
import 'package:base_riverpod/gen/colors.gen.dart';
import 'package:base_riverpod/theme/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Assets.images.guideNavi.image(),
              const Padding(
                padding: EdgeInsets.only(top: 70),
                child: CustomInputField(hintText: 'メールアドレス',)
              ),
              const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: CustomInputField(hintText: 'パスワード',)),
              Padding(
                padding: const EdgeInsets.only(top: 36),
                child: SizedBox(
                  height: 44,
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
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
                    onPressed: () {},
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

class CustomInputField extends StatelessWidget {
  final String hintText;

  const CustomInputField({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: ColorName.orangePrimary, width: 1)),
          contentPadding: const EdgeInsets.all(10),
          border: const OutlineInputBorder(),
          hintStyle: const TextStyle(fontSize: 16.0, color: ColorName.greyMaterial),
          hintText: hintText),
    );
  }
}
