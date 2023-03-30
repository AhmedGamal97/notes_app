import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());

  addNote(NoteModel note) async {
    emit(AddNotesLoading());
    try {
      var notesbox = Hive.box<NoteModel>(kNotesBox);
      emit(AddNotesSuccess());
      await notesbox.add(note);
    } catch (e) {
      AddNotesFailure(e.toString());
    }
  }
}
