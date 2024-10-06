import 'package:flutter/material.dart';
import 'package:instagram_clone_app/components/profile_picture.dart';
import 'package:instagram_clone_app/components/suggested_account_widget.dart';
import 'package:instagram_clone_app/utils/suggested_account.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<SuggestedAccount> suggestedAccount = [
    const SuggestedAccount(imageNamePath: 'lib/assets/images/steve2.png', name: 'Steve', isVerified: true, description: 'Popular'),
    const SuggestedAccount(imageNamePath: 'lib/assets/images/my_profile.png', name: 'Jrcoocl', isVerified: true, description: 'Suggested for you'),
    const SuggestedAccount(imageNamePath: 'lib/assets/images/squidward.png', name: 'SquidWard', isVerified: false, description: 'Suggested for you'),
    const SuggestedAccount(imageNamePath: 'lib/assets/images/spongebob.png', name: 'SpongeBob', isVerified: false, description: 'Suggested for you'),
    const SuggestedAccount(imageNamePath: 'lib/assets/images/user.png', name: 'Justin', isVerified: false, description: 'Suggested for you'),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: null,
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              const Text(
                'jrcoocl',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 26.0,
                ),
              ),
              const SizedBox(width: 10),
              Image.asset(
                'lib/assets/images/down-arrow.png',
                width: 22,
                color: Colors.black,),
            ],
          ),
        ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 25),
          child: Row(
            children: [
              Image.asset(
                'lib/assets/images/threads.png',
                width: 30,
                height: 30,
                color: Colors.black
              ),
              const SizedBox(width: 25),
              Image.asset(
                'lib/assets/images/more.png',
                width: 30,
                height: 30,
                color: Colors.black
              ),
              const SizedBox(width: 25),
              Image.asset(
                'lib/assets/images/menu.png',
                width: 30,
                height: 30,
                color: Colors.black
              ),
            ],
          ),
        ),
      ]
      ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        ProfilePicture(story: 'lib/assets/images/my_profile.png',),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 25),
                    child: Row(
                      children: [
                        //number of post(s)
                        Column(
                          children: [
                            Text(
                              '0',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700
                              ),
                            ),
                            Text(
                              'posts',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w400
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 25),
                        //followers lists
                        Column(
                          children: [
                            Text(
                              '0',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700
                              ),
                            ),
                            Text(
                              'followers',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w400
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 25),
                        //following list
                        Column(
                          children: [
                            Text(
                              '0',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700
                              )),
                            Text(
                              'following',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w400
                              ))
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 8),
              child: Row(
                children: [
                  Text(
                    'Jrco Ocl',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                ],
              ),
            ),
            //edit, share profile and add person 
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 40.0, right: 20, bottom: 30),
              child: Row(
                children: [
                  //edit profile button
                  Container(
                    width: 160,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(246, 215, 215, 215),
                    ),
                    child: const Text(
                      'Edit Profile',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  //share profile button
                  Container(
                    width: 160,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(246, 215, 215, 215),
                    ),
                    child: const Text(
                      'Share Profile',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 50,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(246, 215, 215, 215),
                    ),
                    child: const Icon(Icons.person_add),
                  ),
                ],
              ),
            ),
            //discover people and see all label or header
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Discover people',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                    )
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 140, 255),
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                    )
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 20, right: 10, bottom: 20),
              child: SizedBox(
                width: 500,
                height: 251,
                child: ListView.builder(
                  itemCount: suggestedAccount.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => SuggestedAccountWidget(suggestedAccount: suggestedAccount[index]),
                ),
              ),
            ),
            //posted contents
            Padding(
              padding: const EdgeInsets.only(left: 45, top: 20, right: 45, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('lib/assets/images/feed.png', width: 30, height: 30),
                  Image.asset('lib/assets/images/video.png', width: 30, height: 30),
                  Image.asset('lib/assets/images/tag.png', width: 40, height: 40),
                ],
              ),
            ),
          ],
        )
    );
  }
}