import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:base_riverpod/core/presentation/router/app_router.dart';
import 'package:base_riverpod/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../application/auth_notifier.dart';
import '../shared/auth_provider.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage>
    with SingleTickerProviderStateMixin {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  late AnimationController _animationController;
  late Animation<double> _animation;

  String? _errorText;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _animation =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Future.delayed(
        const Duration(milliseconds: 400),
        () => _animationController.forward(),
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isError = _errorText != null;
    _emailController.text = 'hang.ung@executionlab.asia';
    _passwordController.text = '12345678';

    ref.listen<AuthState>(authNotifierProvider, (preS, nextS) {
      nextS.maybeWhen(
        orElse: () {
          EasyLoading.dismiss();
        },
        authenticated: (authDto) async {
          ref.read(authNotifierProvider.notifier).updateAuthDto(authDto);
          await Future.delayed(const Duration(milliseconds: 300));
          await EasyLoading.dismiss();
          context.router.replace(const ProfileRoute());
        },
        failure: (failure) async {
          await EasyLoading.dismiss();
          setState(() {
            _errorText = 'メールアドレスまたはパスワードが正しくありません';
          });
        },
      );
    });
  timeDilation = 2.0;
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Hero(
                    tag: 'logo_hero_tag',
                    child: _logoWidget(screenWidth),
                  ),
                  const SizedBox(height: 34),
                  FadeTransition(
                    opacity: _animation,
                    child: _formWidget(isError),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Column _formWidget(bool isError) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 26,
          alignment: Alignment.topLeft,
          child: isError
              ? Text(
                  _errorText!,
                  style: const TextStyle(
                    color: Color(0xFFEE2737),
                    fontSize: 12,
                  ),
                )
              : const SizedBox.shrink(),
        ),
        InputView(
          controller: _emailController,
          hintText: 'メールアドレス',
          textInputType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 20),
        InputView(
          controller: _passwordController,
          hintText: 'パスワード',
          textInputType: TextInputType.visiblePassword,
          obscureText: true,
        ),
        const SizedBox(height: 40),
        SizedBox(
          width: double.infinity,
          height: 44,
          child: TextButton(
            onPressed: _onLoginTapped,
            // ignore: sort_child_properties_last
            child: const Text(
              'ログイン',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                const Color(0xFFE74E00),
              ),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'パスワードを忘れた方はこちら',
            style: TextStyle(
              color: Color(0xFFE74E00),
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          height: 44,
          child: TextButton(
            onPressed: () {},
            // ignore: sort_child_properties_last
            child: const Text(
              'ガイドナビとは',
              style: TextStyle(
                color: Color(0xFFE74E00),
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            style: ButtonStyle(
              shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                    side: const BorderSide(color: Color(0xFFE74E00))),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _onLoginTapped() {
    if (_emailController.text.isEmpty || _passwordController.text.isEmpty) {
      setState(() {
        _errorText = 'メールアドレスまたはパスワードが正しくありません';
      });
      return;
    }
    EasyLoading.show();
    ref
        .read(authNotifierProvider.notifier)
        .signIn(_emailController.text, _passwordController.text);
  }

  ConstrainedBox _logoWidget(double screenWidth) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 200),
      child: SizedBox(
        width: screenWidth * 0.45,
        child: AspectRatio(
          aspectRatio: 7 / 2,
          child: Assets.images.guideNavi.image(),
        ),
      ),
    );
  }
}

class InputView extends StatelessWidget {
  const InputView({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.textInputType,
    this.obscureText = false,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final TextInputType textInputType;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: TextField(
        controller: controller,
        keyboardType: textInputType,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(color: Color(0xFFCCCCCC)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(color: Color(0xFFCCCCCC)),
          ),
          hintStyle: const TextStyle(
            color: Color(0xFFCCCCCC),
            fontSize: 14,
          ),
          contentPadding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
        ),
      ),
    );
  }
}
