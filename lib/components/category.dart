import 'dart:ui';

import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final icon;
  final String name;
  const Category({
    required this.icon,
    required this.name
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade200,width: 1,style: BorderStyle.solid)
      ),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.green[50],

            ),
            child: Center(child: Icon(icon,color: Colors.green)),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            name,
            style: const TextStyle(
              fontFamily: 'Poppins',
              color: Colors.black45,
              fontSize: 14,
              fontWeight: FontWeight.w600
            ),
          )
        ],
      ),
    );
  }
}
