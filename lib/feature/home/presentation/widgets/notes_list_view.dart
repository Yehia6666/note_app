import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/feature/home/manager/notes_cubit/notes_cubit.dart';
import 'package:note_app/feature/home/presentation/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        final notes = context.read<NotesCubit>().notes!;
        return ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: notes.length,
          itemBuilder: (context, index) {
            return NoteItem(note: notes[index]);
          },
        );
      },
    );
  }
}
