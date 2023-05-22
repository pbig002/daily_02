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
        backgroundColor: const Color.fromARGB(255, 173, 239, 248),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const AddNote()),
              );
            },
            icon: const Icon(Icons.add_box_outlined, size: 40,),
          ),
        ],
        title: const Center(
          child: Text(
            "Dialy",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
      
          child: DisplayBoxWidget<Note>(
            hiveBox: HiveBox.note,
            child: (context, index, data) {
              return Container(
                decoration: const BoxDecoration(
                 
                    color: Color.fromARGB(255, 176, 198, 233),
                    ),
              
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(data.topic, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                    
                    Text(data.description, style: TextStyle(fontSize: 20),),
                  
                  ],
                ),
                
              );
            },
          ),
        ),
        
      );
      
   
  }
}
