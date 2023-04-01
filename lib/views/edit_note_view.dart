// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../models/note_model.dart';
import 'widgets/edit_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({
    Key? key,
    required this.note,
  }) : super(key: key);
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: EditNoteViewBody(
      note: note,
    ));
  }
}
