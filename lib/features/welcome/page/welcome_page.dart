// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:whatsapp/extension/custom_theme_extension.dart';
import 'package:whatsapp/features/auth/page/login_page.dart';
import '../../../colors/coloors.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../components/language_button.dart';
import '../components/privacy_and_terms.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const SizedBox(height: 50),
            const Text(
              "Welcome to WhatsApp",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w900,
                color: Coloors.greenLight,
              ),
            ),
            const SizedBox(height: 40),
            Image.asset(
              "assets/images/circle.png",
              color: context.theme.circleImageColor,
            ),
            const SizedBox(height: 50),
            const PrivacyAndTerms(),
            const SizedBox(height: 15),
            CustomElevatedButton(
              text: "agree and continue",
              onPress: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const LoginPage();
                }),
              ),
            ),
            const SizedBox(height: 50),
            const LanguageButton(),
          ],
        ),
      ),
    ));
  }
}
