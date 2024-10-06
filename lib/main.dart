import 'package:flutter/material.dart';
import 'package:instagram_clone_app/pages/home_page.dart';
import 'package:instagram_clone_app/pages/main_page.dart';
import 'package:instagram_clone_app/pages/post_page.dart';
import 'package:instagram_clone_app/pages/profile_page.dart';
import 'package:instagram_clone_app/pages/reels.page.dart';
import 'package:instagram_clone_app/pages/search_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainPage(),
      routes: {
        'home_page': (context) => HomePage(),
        'search_page': (context) => const SearchPage(),
        'post_page': (context) => const PostPage(),
        'reels_page': (context) => const ReelsPage(),
        'profile_page': (context) => const ProfilePage(),
      },
    );
  }
}