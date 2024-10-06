import 'package:flutter/material.dart';

class CustomSeparator extends StatelessWidget {
  const CustomSeparator({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
