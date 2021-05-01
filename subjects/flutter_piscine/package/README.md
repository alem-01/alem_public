Dart’s way of organizing and sharing a set of functionality is 
through Package. Dart Package is simply sharable libraries or modules. 
In general, the Dart Package is same as that of Dart Application except 
Dart Package does not have application entry point, main.
A minimal package consists of the following:

- pubspec.yaml: 
A metadata file that declares the package name, version, author, and so on.
- lib: 
The lib directory contains the public code in the package, minimally a single .dart file.

### Instructions:

Create a flutter package for your Secure Notes app. You should write 
your own package which will work with sqlflite and have a CRUD 
functionality.
Your package should consist of Database.dart class and Note class which 
will allow easy access to SQLite database.
And at the end you will be able to import it like:

```
import 'package:note/note.dart';

```

### Objective:

- Dealing with existing, large apps
- Reusing packages across multiple apps
- Local vs remove (git) packages

### Database.dart

```
class Database {
Database _db;

    Future create() async {
        Directory path = await getApplicationDocumentsDirectory();
        String dbPath = join(path.path, "database.db");

        _db = await openDatabase(dbPath, version: 1);
    }
}

```

Example of Database class, there you should add a functionality to to create table "Note" with 4 parameters :

- id
- title
- body
- date

Database class should also have CRUD methods like getAllNotes, deleteAllNotes, addNote, deleteNote, updateNote.

- getAllNotes()
- deleteAllNotes()
- addNote(note: Note)
- deleteNote(note: Note)
- updateNote(oldNote: Note, newNote: Note)

### Note.dart

Note Model will be a model class for our Note object.

```
class Note {
  int id;
  String title;
  String body;
  String date;

  Note({
    this.id,
    this.title,
    this.body,
    this.date;
  });

```

### Hints:

[https://pub.dev/packages/sqflite](https://pub.dev/packages/sqflite) [https://flutter.dev/docs/development/packages-and-plugins/developing-packages](https://flutter.dev/docs/development/packages-and-plugins/developing-packages)