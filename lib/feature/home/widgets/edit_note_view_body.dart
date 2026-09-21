import 'package:flutter/material.dart';
import 'package:note_app/feature/home/widgets/custom_appbar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Column(
        children: [
          CustomAppbar(title: 'Edit Note', icon: Icons.check, onPressed: () {}),
        ],
      ),
    );
  }
}
