import 'package:daily_app03/models/note.dart';
import 'package:daily_app03/pages/add_note.dart';
import 'package:daily_app03/pages/home.dart';
import 'package:daily_app03/services/local_database_server.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import 'constants/hive-box.dart';

Future<void> main() async {
  // initialize local database
  await LocalDatabaseService.instance.initialize();
  // // create object FlutterLocalNotificationsPlugin
  // final localNotification = FlutterLocalNotificationsPlugin();
  // // inject FlutterLocalNotificationsPlugin and set up notification service
  // //await NotificationService.instance.setup(localNotification);
  // runApp(const MyApp());
  // note employee = note("Des", "qwerty");
  // // add vehicle
  // final box = Hive.box<note>(HiveBox.note.name);
  // await box.add(employee);
  // // get vehicle
  // final getNote = await box.getAt(0);
  // print("First Vehicle $getNote");
  // // update vehicle
  // note newEmployee = note("qwer", "qwewqe");
  // await box.putAt(0, newEmployee);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
