import 'package:flutter/material.dart';
import 'package:whatsapp/extension/custom_theme_extension.dart';
import 'package:whatsapp/features/auth/components/custom_text_field.dart';
import 'package:whatsapp/widgets/custom_icon_button.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  late TextEditingController codeController;

  @override
  void initState() {
    super.initState();
    codeController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    codeController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
        title: Text(
          "Verify your number",
          style: TextStyle(
            color: context.theme.authAppbarTextColor,
          ),
        ),
        actions: [
          CustomIconButton(onTap: () {}, icon: Icons.more_vert),
        ],
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(
                      color: context.theme.greyColor,
                      height: 1.5,
                    ),
                    children: [
                      const TextSpan(
                        text:
                            "You've tried to register +923133033215. before requesting an SMS or Call with your code.",
                      ),
                      TextSpan(
                        text: "Wrong number?",
                        style: TextStyle(
                          color: context.theme.blueColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: CustomTextfield(
                  controller: codeController,
                  hintText: "- - -  - - -",
                  fontSize: 30,
                  autoFocus: true,
                  keyboardType: TextInputType.number,
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Enter 6-digit code",
                style: TextStyle(
                  color: context.theme.greyColor,
                ),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Icon(
                    Icons.message,
                    color: context.theme.greyColor,
                  ),
                  const SizedBox(width: 20),
                  Text(
                    'Resend SMS',
                    style: TextStyle(
                      color: context.theme.greyColor,
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
