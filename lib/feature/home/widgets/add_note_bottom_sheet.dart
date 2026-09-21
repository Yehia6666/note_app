import 'package:flutter/material.dart';
import 'package:note_app/core/custom_widget/custom_text_filed.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 16,vertical: 32),
      child: Column(
        children: [
          CustomTextFiled(hintText: 'Title',),
          SizedBox(
            height: 16,
          ),
          CustomTextFiled(hintText: 'Content',),
        ],
      ),
    );
  }
}