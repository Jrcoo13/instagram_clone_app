import 'package:flutter/material.dart';
import 'package:instagram_clone_app/components/friend_stories.dart';
import 'package:instagram_clone_app/components/myprofile_button.dart';
import 'package:instagram_clone_app/components/post_content.dart';
import 'package:instagram_clone_app/include/constant/separator.dart';
import 'package:instagram_clone_app/utils/post.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Post> posts = [

    const Post(
      name: 'Jerico Ocal', 
      profile: 'lib/assets/images/my_profile.png',
      image: 'lib/assets/images/my_profile.png',
      friend: 'Voices in my head',
      description: 'Hello World'),
    
    const Post(
      name: 'Justin Ocal', 
      profile: 'lib/assets/images/my_profile.png',
      image: 'lib/assets/images/my_profile.png',
      friend: 'Jerico',
      description: 'Pogi ko talaga'),
    
    const Post(
      name: 'Erlinda Ocal', 
      profile: 'lib/assets/images/my_profile.png',
      image: 'lib/assets/images/my_profile.png',
      friend: 'Justin',
      description: 'Hello guys'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Padding(
            padding: EdgeInsets.only(left: 5),
            child: Text(
              'Instagram',
              style: TextStyle(
                color: Colors.black,
                fontSize: 35.0,
              ),
            ),
          ),
          leading: null,
          actions: [
            Image.asset('lib/assets/images/heart.png', height: 30, width: 30),
            const SizedBox(width: 25),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Image.asset('lib/assets/images/messenger.png',
                  height: 30, width: 30),
            ),
          ],
        ),
        // ignore: avoid_unnecessary_containers
        body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 1,
          itemBuilder: (context, index) => 
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //stories list view
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        height: 90,
                        width: 410,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                        ),
                        //Stories
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            const MyProfileStory(story: 'lib/assets/images/my_profile.png'),
                            const StoriesButton(name: 'Steve', profilePicture: 'lib/assets/images/steve2.png'),
                            const StoriesButton(name: 'Squidward', profilePicture: 'lib/assets/images/squidward.png'),
                            const StoriesButton(name: 'SpongeBob', profilePicture: 'lib/assets/images/spongebob.png'),
                            const StoriesButton(name: 'Patrick', profilePicture: 'lib/assets/images/patrick.png'),
                            const StoriesButton(name: 'Mr.Crabs', profilePicture: 'lib/assets/images/crab1.png'),
                            const StoriesButton(name: 'Steve', profilePicture: 'lib/assets/images/steve2.png'),
                            const StoriesButton(name: 'Steve', profilePicture: 'lib/assets/images/steve2.png'),
                            const StoriesButton(name: 'Steve', profilePicture: 'lib/assets/images/steve2.png'),
                            const StoriesButton(name: 'Steve', profilePicture: 'lib/assets/images/steve2.png'),
                            const StoriesButton(name: 'Steve', profilePicture: 'lib/assets/images/steve2.png'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const CustomSeparator(),
              const PostContent(
                post: Post(
                  name: 'Jerico Ocal', 
                  profile: 'lib/assets/images/my_profile.png',
                  image: 'lib/assets/images/my_profile.png',
                  friend: 'Unknown',
                  description: 'Hello World'
                )
              ),
              const PostContent(
                post: Post(
                  name: 'Steve', 
                  profile: 'lib/assets/images/steve1.png',
                  image: 'lib/assets/images/steve2.png',
                  friend: 'SpongeBob',
                  description: 'Hmmmmmmm'
                )
              ),
              const PostContent(
                post: Post(
                  name: 'SquidWard', 
                  profile: 'lib/assets/images/squidward.png',
                  image: 'lib/assets/images/squidward.png',
                  friend: 'SpongeBob',
                  description: 'I hate you SpongeBob'
                )
              ),

              const PostContent(
                post: Post(
                  name: 'SpongeBob', 
                  profile: 'lib/assets/images/spongebob.png',
                  image: 'lib/assets/images/spongebob.png',
                  friend: 'SpongeBob',
                  description: 'I hate you SpongeBob'
                )
              ),

              const PostContent(
                post: Post(
                  name: 'Patrick', 
                  profile: 'lib/assets/images/patrick.png',
                  image: 'lib/assets/images/patrick.png',
                  friend: 'SpongeBob',
                  description: "Hi, how are you, please help I'm under the water~"
                )
              ),

              const PostContent(
                post: Post(
                  name: 'Mr. Crabs', 
                  profile: 'lib/assets/images/crab1.png',
                  image: 'lib/assets/images/crab1.png',
                  friend: 'SquidWard',
                  description: "💵💵💵💵💵💵💵💵💵"
                )
              ),
            ],
          ),
        ));
  }
}
