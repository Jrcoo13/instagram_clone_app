import 'package:flutter/material.dart';
import 'package:instagram_clone_app/utils/post.dart';

class PostContent extends StatelessWidget {
  final Post post;
  const PostContent({
    super.key,
    required this.post});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 10, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  //user profile picture top
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(post.profile,
                        width: 40, height: 40),
                  ),
                  const SizedBox(width: 10),
                  //user name
                   Text(
                    post.name,
                    style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              // follow and more button
              Row(
                children: [
                  Container(
                    width: 90,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 226, 223, 223),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text('Follow',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 16)),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Icon(
                    Icons.more_vert,
                    size: 30,
                  )
                ],
              ),
            ],
          ),
        ),
        //user post image
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: Stack(
            children: [
              ClipRRect(
                child: Image.asset(post.image,
                    width: 430, height: 436),
              ),
            ],
          ),
        ),
        //likes/comments/send/favorite activities
        Padding(
          padding:
              const EdgeInsets.only(left: 20, top: 5, right: 20, bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'lib/assets/images/heart.png',
                    width: 30,
                    height: 30,
                  ),
                  const SizedBox(width: 20),
                  Image.asset(
                    'lib/assets/images/chat.png',
                    width: 30,
                    height: 30,
                  ),
                  const SizedBox(width: 20),
                  Image.asset(
                    'lib/assets/images/send.png',
                    width: 30,
                    height: 30,
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    'lib/assets/images/save.png',
                    width: 30,
                    height: 30,
                  )
                ],
              )
            ],
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 10),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset('lib/assets/images/my_profile.png',
                    width: 20, height: 20),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset('lib/assets/images/my_profile.png',
                    width: 20, height: 20),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset('lib/assets/images/my_profile.png',
                    width: 20, height: 20),
              ),
              const SizedBox(width: 10),
               Text(
                'Liked by ${post.friend} and others',
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
          child: Row(
            children: [
              Text(
                post.description,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            children: [
              Container(
                width: 430,
                height: 1,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
