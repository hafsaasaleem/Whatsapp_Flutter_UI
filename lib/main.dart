import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:whatsapp/features/auth/page/verification_page.dart';
import 'package:whatsapp/features/welcome/page/welcome_page.dart';
import 'package:whatsapp/apptheme/dark_theme.dart';
import 'package:whatsapp/apptheme/light_theme.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
      title: 'Whatsapp me',
      // home: const WelcomePage(),
      home: const VerificationPage(),

    );
  }
}
