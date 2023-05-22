import 'package:daily_app03/models/note.dart';

import 'package:daily_app03/pages/add_note.dart';
import 'package:daily_app03/pages/home.dart';
import 'package:daily_app03/services/local_database_server.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

Future<void> main() async {
  // initialize local database
  await LocalDatabaseService.instance.initialize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
