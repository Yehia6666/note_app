import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/core/custom_widget/custom_text_filed.dart';
import 'package:note_app/feature/home/manager/notes_cubit/notes_cubit.dart';
import 'package:note_app/feature/home/model/note_model.dart';
import 'package:note_app/feature/home/presentation/widgets/custom_appbar.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Column(
        children: [
          CustomAppbar(
            title: 'Edit Note',
            icon: Icons.check,
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = subTitle ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 32),
          CustomTextFiled(
            onChanged: (value) {
              title = value;
            },
            hintText: widget.note.title,
          ),
          const SizedBox(height: 16),
          CustomTextFiled(
            onChanged: (value) {
              subTitle = value;
            },
            hintText: widget.note.subTitle,
            maxLine: 5,
          ),
        ],
      ),
    );
  }
}
