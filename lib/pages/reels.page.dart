import 'package:flutter/material.dart';

class ReelsPage extends StatelessWidget {
  const ReelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: null,
      ),
      body: const Center(
          child: Text(
          'Reels Page',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black
          ),
          ),
        ),
      // bottomNavigationBar: Padding(
      //     padding: const EdgeInsets.only(left: 25, top: 25, right: 25, bottom: 40),
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         GestureDetector(
      //           child: Image.asset('lib/assets/images/home-outlined.png', width: 30, height: 30,),
      //           onTap: () => Navigator.pushNamed(context, 'home_page')
      //         ),

      //         GestureDetector(child: Image.asset('lib/assets/images/search.png', width: 30, height: 30,),
      //         onTap: () => Navigator.pushNamed(context, 'search_page')
      //         ),

      //         GestureDetector(child: Image.asset('lib/assets/images/post.png', width: 30, height: 30,),
      //         onTap: () => Navigator.pushNamed(context, 'post_page')
      //         ),

      //         GestureDetector(child: Image.asset('lib/assets/images/reels-fill.png', width: 40, height: 40,),
      //         onTap: () => Navigator.pushNamed(context, 'reels_page')
      //         ),

      //         GestureDetector(
      //           child: Image.asset('lib/assets/images/user.png', width: 35, height: 35,),
      //           onTap: () => Navigator.pushNamed(context, 'profile_page')
      //         ),
      //       ],
      //     ),
      //   ),
    );
  }
}