// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/notes_cubit/notes_cubit.dart';
import 'package:notes_app/views/widgets/colors_listview.dart';

import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

import '../../constants.dart';
import '../../cubit/add_note_cubit/add_notes_cubit.dart';
import '../../models/note_model.dart';
import 'edit_note_color_listview.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({
    Key? key,
    required this.note,
  }) : super(key: key);
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            CustomAppBar(
                onPresssed: () {
                  widget.note.title = title ?? widget.note.title;
                  widget.note.subTitle = content ?? widget.note.subTitle;

                  widget.note.save();
                  BlocProvider.of<NotesCubit>(context).fetchAllNote();
                  Navigator.pop(context);
                },
                title: 'Edit Note',
                icon: Icons.check),
            const SizedBox(
              height: 50,
            ),
            CustomTextField(
                onChanged: (value) {
                  title = value;
                },
                hint: widget.note.title),
            const SizedBox(
              height: 16,
            ),
            CustomTextField(
              onChanged: (value) {
                content = value;
              },
              hint: widget.note.subTitle,
              maxLines: 5,
            ),
            const SizedBox(
              height: 16,
            ),
            EditNoteColorsList(
              note: widget.note,
            ),
          ],
        ),
      ),
    );
  }
}
