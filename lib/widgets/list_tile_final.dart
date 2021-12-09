import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ListTileFinal extends StatelessWidget {
  const ListTileFinal({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.dateTime,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final Color color;
  final DateTime dateTime;

  @override
  Widget build(BuildContext context) {
    // String dateTimeFormatter(dateTime){
    // var formatter = new DateFormat('dd/MM/yyyy');
    // String formattedTime = DateFormat('kk:mm:a').format(dateTime);
    // String formattedDate = formatter.format(dateTime);
    // return formattedDate+(" ")+ formattedTime;
    // }
   String formattedDate = DateFormat().add_yMd().add_jm().format(dateTime);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          SizedBox(height: 6.0),
          Text(formattedDate),
          Text(
            subtitle,
            style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.w600,
                color: Colors.black),
          ),
        ],
      ),
    );
  }

}
