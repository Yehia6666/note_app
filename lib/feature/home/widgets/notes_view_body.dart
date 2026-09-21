import 'package:flutter/material.dart';
import 'package:note_app/feature/home/widgets/custom_appbar.dart';
import 'package:note_app/feature/home/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Column(
        children: const [
          CustomAppbar(),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
