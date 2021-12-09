// widget for parent list UI

import 'package:flutter/material.dart';


class Widget69 extends StatelessWidget {
  // const Widget69({ Key? key }) : super(key: key);
  final String title;
  final String subtitle;
  final Color color;
  // final DateTime dateTime;

  Widget69({
    required this.title,
    required this.subtitle,
    required this.color,
    // required this.dateTime,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      //borderOnForeground: true,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: color, width: 1.0),
        ),
        padding: EdgeInsets.fromLTRB(15.0, 10.0, 10.0, 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              subtitle,
              softWrap: true,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
