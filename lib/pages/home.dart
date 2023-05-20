import 'package:daily_app03/constants/hive-box.dart';
import 'package:daily_app03/models/note.dart';
import 'package:daily_app03/pages/add_note.dart';
import 'package:daily_app03/widgets/display_box_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 173, 239, 248),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => AddNote()),
              );
            },
            icon: Icon(Icons.add_alarm_sharp),
          ),
        ],
        title: Center(
          child: Text(
            "Dialy",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Container(
          child: DisplayBoxWidget<Note>(
            hiveBox: HiveBox.note,
            child: (context, index, data) {
              // return ListView(
              //   padding: const EdgeInsets.all(10),
              //   children: [
              //     Container(
              //       decoration: BoxDecoration(
              //         color: Color.fromARGB(255, 137, 235, 230),
              //         borderRadius: BorderRadius.circular(10),
              //       ),
              //       height: 50,
              //       width: 40,
              //       child: Text(""),
              //     ),
              //   ],
              // );
              return Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 176, 198, 233)),
                padding: EdgeInsets.all(20),
                child: Text(data.description),
              );
            },
          ),
        ),
      ),
    );
  }
}
