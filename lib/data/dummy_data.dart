
import 'package:flutter/material.dart';
import 'model.dart';


var dummy_Notifications = [

  NotificationModel(
    id: 'n2',
    title: 'Examination Branch',
    subtitle:
    "M. Tech, MBA & MCA Regular and Supply (R20, R18, R15) OCT.2021-Hall Tickets can be downloaded by logging into this Portal ",
    color: Colors.redAccent.shade200,
    //notistatus: Notistatus.exams,
    dateTime: DateTime.now()
  ),
  NotificationModel(
    id: 'n4',
    title: 'PRINCIPAL',
    subtitle: 'General notification content',
    color: Colors.green.shade400,
      dateTime: DateTime.now()

    //notistatus: Notistatus.general,
  ),
  NotificationModel(
    id: 'n8',
    title: 'CSE HOD',
    subtitle: 'Timetable for the classes',
    color: Colors.orange.shade300,
      dateTime: DateTime.now()

    //notistatus: Notistatus.classes,
  ),
  NotificationModel(
    id: 'n10',
    title: 'SYS ADMIN',
    subtitle:
    'Tomorrow (22/11/2021) is declared holiday due to orientation day.',
    color: (Colors.lightBlue[300])!,
      dateTime: DateTime.now()

    //notistatus: Notistatus.holidays,
  ),
];
