import 'package:flutter/material.dart';

import 'note.dart'; // Import the note model
import 'dart:collection';

class NoteData extends ChangeNotifier {
  List<Note> _notes = [
    Note(title: 'Sample Note 1', description: 'This is a description', dateTime: DateTime.now()),
    Note(title: 'Sample Note 2', description: 'Another description', dateTime: DateTime.now()),
  ];

  UnmodifiableListView<Note> get notes {
    return UnmodifiableListView(_notes);
  }

  int get noteCount {
    return _notes.length;
  }

  void addNote(String title, String description, DateTime dateTime) {
    final newNote = Note(title: title, description: description, dateTime: dateTime);
    _notes.add(newNote);
    notifyListeners();
  }

  void deleteNote(Note note) {
    _notes.remove(note);
    notifyListeners();
  }
}
