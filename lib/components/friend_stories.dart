import 'package:flutter/material.dart';

class StoriesButton extends StatelessWidget {
  final String name;
  final String profilePicture;

  const StoriesButton({
    super.key,
    required this.name,
    required this.profilePicture
    });

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    // return Padding(
    //   padding: const EdgeInsets.only(left: 5.0),
    //   child: Container(
    //               width: 65,
    //               height: 65,
    //               decoration: BoxDecoration(
    //                 border: Border.all(color: Colors.green, width: 2.0),
    //                 borderRadius: BorderRadius.circular(65),
    //               ),
    //               child: Stack(children: [
    //                   ClipRRect(
    //                     borderRadius: BorderRadius.circular(40),
    //                     child: Image.asset(
    //                         profileStory.imagePathName,
    //                         height: 65.0, 
    //                         width: 65.0,
    //                         fit: BoxFit.cover
    //                       ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    // );

    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              border: Border.all(width: 3, color: Color.fromARGB(255, 213, 0, 188)),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Stack(
              children: [
                //instagram friend stories
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(profilePicture,
                      height: 70.0, width: 70.0, fit: BoxFit.cover),
                ),
              ],
            ),
          ),
          //my story text
           SizedBox(
            width: 70,
            child: Center(
              child: Text(
                name,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
                ),
            ),
          ),
        ],
      ),
    );
  }
}