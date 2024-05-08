import 'package:flutter/material.dart';
import 'package:wen/theme/theme.dart';
import 'package:wen/theme/theme_manager.dart';
import 'pages/home.dart';
import 'pages/about.dart';
import 'pages/meetup.dart';
import 'pages/tokenomics.dart';
import 'pages/airdrop.dart';
//import 'pages/contact.dart';
//import 'pages/careers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: themeManager,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          title: 'Wen Moon Wen Lambo',
          theme: MyAppThemes.lightTheme,
          darkTheme: MyAppThemes.darkTheme,
          themeMode: themeManager.themeMode,
          debugShowCheckedModeBanner: false,
          routes: {
            '/': (context) => Home(),
            '/about': (context) => About(),
            '/meetup': (context) => Meetup(),
            '/airdrop': (context) => Airdrop(),
            '/tokenomics': (context) => Tokenomics(),
            //'/contactUsPage': (context) => const ContactUsPage(),
            //'/careersPage': (context) => CareersPage(),
          },
        );
      },
    );
  }
}
