import 'package:flutter/material.dart';




class NotificationModel {
  final String id;
  final String title;
  final String subtitle;
  final Color color;
  final DateTime dateTime;
  //final Notistatus notistatus;

  NotificationModel({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.dateTime,
    //required this.notistatus,
  });
}
