import 'package:flutter/material.dart';
import 'package:note_app/feature/home/widgets/custom_appbar.dart';
import 'package:note_app/feature/home/widgets/note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24 ,vertical: 24),
      child: ListView(
        children: [
          CustomAppbar(),
          NoteItem(),
        ],
      ),
    );
  }
}