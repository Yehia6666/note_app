import 'package:flutter/material.dart';

class ColorsListView extends StatelessWidget {
  const ColorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,

        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right : 8.0),
            child: const ColorItem(),
          );
        },
      ),
    );
  }
}

class ColorItem extends StatelessWidget {
  const ColorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(radius: 38, backgroundColor: Colors.blue);
  }
}
