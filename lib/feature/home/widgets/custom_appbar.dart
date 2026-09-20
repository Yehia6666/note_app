import 'package:flutter/material.dart';
import 'package:note_app/core/custom_widget/custom_search_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Notes',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
        ),
        CustomSearchIcon(),
      ],
    );
  }
}
