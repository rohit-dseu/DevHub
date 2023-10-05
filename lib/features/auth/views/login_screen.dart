import 'package:devhub/core/constants/constants.dart';
import 'package:devhub/theme/pallate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/common/loader.dart';
import '../../../core/common/sign_in_button.dart';
import '../../../responsive/responsive.dart';
import '../controller/auth_controller.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  // void signInAsGuest(WidgetRef ref, BuildContext context) {
  //   ref.read(authControllerProvider.notifier).signInAsGuest(context);
  // }

  @override
  Widget build(BuildContext context) {
    final isLoading = ref.watch(authControllerProvider);
    return Responsive(
      child: Scaffold(
        // backgroundColor: const Color(0xff9232E9),
        body: isLoading
            ? const Loader()
            : Container(
                decoration: BoxDecoration(
                  gradient: AppColors.greyGradient,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SizedBox(height: 10),
                    const Column(
                      children: [
                        Text(
                          "DevHub",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 34,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Connect Create and Succeed",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      Constants.logoPath,
                    ),
                    Column(
                      children: [
                        const SignInButton(),
                        TextButton(
                          onPressed: () {},
                          /*signInAsGuest(ref, context),*/
                          child: const Text(
                            'Skip  ➡️',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
