import 'package:flutter/material.dart';

class MyProfileStory extends StatelessWidget {
  // final ProfileStory profile;
  final String story;

  const MyProfileStory({
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
            width: 70,
            height: 70,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(story,
                      height: 70.0, width: 70.0, fit: BoxFit.cover),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
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
          const SizedBox(
            width: 70,
            child: Text(
              'Your story',
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
              ),
          ),
        ],
      ),
    );
  }
}
