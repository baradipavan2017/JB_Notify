import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class ListWidget extends StatelessWidget {
  // const ListWidget({Key? key}) : super(key: key);
  final String title;
  final String subtitle;
  final Color color;
  final DateTime dateTime;

  ListWidget({
    required this.title,
    required this.subtitle,
    required this.color,
    required this.dateTime,
  });

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat().add_yMd().add_jm().format(dateTime);

    return Card(
      elevation: 3.0,
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      child: Container(
        padding: const EdgeInsets.all(15.0),
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
            SizedBox(height: 3.0,),
            Text(formattedDate),
            SizedBox(height: 3.0,),

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
