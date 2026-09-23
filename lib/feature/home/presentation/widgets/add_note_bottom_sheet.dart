import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/feature/home/manager/add_note_cubit/add_note_cubit_cubit.dart';
import 'package:note_app/feature/home/manager/notes_cubit/notes_cubit.dart';
import 'package:note_app/feature/home/presentation/widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubitCubit(),
      child: BlocConsumer<AddNoteCubitCubit, AddNoteCubitState>(
        listener: (context, state) {
          if (state is AddNoteCubitFailure) {
            log('Eror is ${state.errorMessage}');
          }

          if (state is AddNoteCubitSuccess) {
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteCubitLoading ? true : false,
            child: Padding(
              padding: EdgeInsetsGeometry.only(
                left: 16,
                right: 16,
                top: 32,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: SingleChildScrollView(child: AddNoteForm()),
            ),
          );
        },
      ),
    );
  }
}
