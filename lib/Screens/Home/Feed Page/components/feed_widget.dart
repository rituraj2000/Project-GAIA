import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FeedPostWidget extends StatelessWidget {
  const FeedPostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      height: 400,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(30), // adjust the radius to your liking
        // set the color and width of the border
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3), // set the color of the shadow
            spreadRadius: 2, // set the spread radius of the shadow
            blurRadius: 5, // set the blur radius of the shadow
            offset: const Offset(0, 3), // set the offset of the shadow
          ),
        ],
      ),
    );
  }
}
