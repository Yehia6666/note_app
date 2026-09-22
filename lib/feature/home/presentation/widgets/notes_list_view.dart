import 'package:flutter/material.dart';
import 'package:note_app/feature/home/presentation/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context , index){
        return NoteItem();
      },
    );
  }
}