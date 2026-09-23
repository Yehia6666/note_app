import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/feature/home/model/note_model.dart';
import 'package:note_app/feature/home/presentation/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    debugPrint('DATE FROM NOTE ITEM: ${note.date}');
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EditNoteView();
            },
          ),
        );
      },

      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        margin: EdgeInsets.only(top: 12),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(
                  note.title,
                  style: TextStyle(color: Colors.black, fontSize: 26),
                ),
              ),
              subtitle: Text(
                note.subTitle,
                style: TextStyle(color: Colors.grey[800], fontSize: 18),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const FaIcon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 24,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16, top: 12),
              child: Text(note.date, style: TextStyle(color: Colors.grey[800])),
            ),
          ],
        ),
      ),
    );
  }
}
