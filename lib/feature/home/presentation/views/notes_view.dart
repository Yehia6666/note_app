import 'package:flutter/material.dart';
import 'package:note_app/core/constants.dart';
import 'package:note_app/feature/home/presentation/widgets/add_note_bottom_sheet.dart';
import 'package:note_app/feature/home/presentation/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(16),
            ),
            context: context,
            builder: (context) {
              return const AddNoteBottomSheet();
            },
          );
        },
        child: Icon(Icons.add,color: Colors.black,size: 28,),
      ),
      body: const NotesViewBody(),
    );
  }
}
