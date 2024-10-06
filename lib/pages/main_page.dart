import 'package:flutter/material.dart';
import 'package:instagram_clone_app/pages/home_page.dart';
import 'package:instagram_clone_app/pages/post_page.dart';
import 'package:instagram_clone_app/pages/profile_page.dart';
import 'package:instagram_clone_app/pages/reels.page.dart';
import 'package:instagram_clone_app/pages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //list of body pages
  List<Widget> pages = [
    HomePage(),
    const SearchPage(),
    const PostPage(),
    const ReelsPage(),
    const ProfilePage()
  ];
  //use to track the selected index of pages
  //by default the selected index is 0 or the home page
  int currentPageIndex = 0;

  //use to update the current value of the 'currentPageIndex'
  void _selectedPageIndex(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(currentPageIndex),
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 25, top: 25, right: 25, bottom: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                child: Image.asset('lib/assets/images/home-button.png', width: 30, height: 30,),
                //onTap: () => Navigator.pushNamed(context, 'home_page')
                onTap: () => _selectedPageIndex(0),
              ),
          
              GestureDetector(
                child: Image.asset('lib/assets/images/search.png', width: 30, height: 30,),
              //onTap: () => Navigator.pushNamed(context, 'search_page')
              onTap: () => _selectedPageIndex(1),
              ),
          
              GestureDetector(
                child: Image.asset('lib/assets/images/post.png', width: 30, height: 30,),
              //onTap: () => Navigator.pushNamed(context, 'post_page')
              onTap: () => _selectedPageIndex(2),
              ),
          
              GestureDetector(
                child: Image.asset('lib/assets/images/video.png', width: 30, height: 30,),
              //onTap: () => Navigator.pushNamed(context, 'reels_page')
              onTap: () => _selectedPageIndex(3),
              ),
          
              GestureDetector(
                child: Image.asset('lib/assets/images/user_profile.png', width: 35, height: 35,),
                //onTap: () => Navigator.pushNamed(context, 'profile_page')
                onTap: () => _selectedPageIndex(4),
              ),
            ],
          ),
        ),
    );
  }
}