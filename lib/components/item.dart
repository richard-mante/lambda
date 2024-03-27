import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  final String imgLink;
  const PostItem({
    super.key,
    required this.imgLink,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(imgLink),
        ),
      ),
    );
  }
}
