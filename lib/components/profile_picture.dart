import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  // final ProfileStory profile;
  final String story;

  const ProfilePicture({
    super.key,
    required this.story,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        children: [
          SizedBox(
            width: 90,
            height: 90,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(story,
                      height: 90.0, width: 90.0, fit: BoxFit.cover),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.white, width: 1.5)),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //my story text
          // const SizedBox(
          //   width: 70,
          //   child: Text(
          //     'Your story',
          //     overflow: TextOverflow.ellipsis,
          //     maxLines: 1,
          //     style: TextStyle(
          //       color: Colors.black,
          //       fontWeight: FontWeight.w400,
          //     ),
          //     ),
          // ),
        ],
      ),
    );
  }
}
