import 'package:base_riverpod/auth/application/auth_notifier.dart';
import 'package:base_riverpod/auth/shared/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: implement build

    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    final TextEditingController ctrlUsername = TextEditingController();
    final TextEditingController ctrlPassword = TextEditingController();

    ref.listen<AuthState>(authNotifierProvider, (_, state) {
      state.maybeWhen(
        orElse: () {},
      );
    });
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            const SizedBox(
              height: 148,
            ),
            const SizedBox(
              height: 60,
            ),
            const Text(
              "Login",
            ),
            const SizedBox(
              height: 60,
            ),
            SizedBox(
              width: 320,
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Username",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      key: const Key("tap1"),
                      controller: ctrlUsername,
                      obscureText: false,
                      decoration: const InputDecoration(hintText: "username"),
                    ),
                    // const SizedBox(
                    //   height: 30,
                    // ),

                    const Text(
                      "Password",
                    ),
                    Stack(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 10),
                            child: TextField(
                              key: const Key("tap2"),
                              controller: ctrlPassword,
                              obscureText: true,
                              // validator: (value) {
                              //   if (value!.isEmpty) {
                              //     return validateInputTest;
                              //   } else if (value.length < 8) {
                              //     return validateStringPass;
                              //   }
                              //   return null;
                              // },
                              decoration: const InputDecoration(
                                hintText: "password",
                              ),
                            )),
                        Positioned(
                          right: 0,
                          top: 1,
                          child: Container(
                            height: 54,
                            width: 54,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF01A7D9)),
                            child: IconButton(
                              key: const Key("login"),
                              // splashColor: colorHoverIconButton,
                              // highlightColor: colorHoverIconButton,
                              onPressed: () {
                                ref.read(authNotifierProvider.notifier).signIn(
                                    ctrlUsername.text, ctrlPassword.text);
                              },
                              icon: const Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              ),
                              iconSize: 22,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
