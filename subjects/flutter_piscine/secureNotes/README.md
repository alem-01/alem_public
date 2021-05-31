### Introduction:

The app where you can add your own notes

Packages: your own *sqflite* package

### Objective:

- Work with textfields
- Work with keyboard
- Editing
- Deleting
- Reordering

### First Part:

- Main Screen show display list of notes with title, and scheduled time
- Implement ReordableListView to reorder items in list
- Add ability to delete item by swiping
- Add "add" button, which opens screen with 3 text fields

<center>
<img src="https://github.com/alem-01/alem_public/blob/master/resources/secureNotes.01.png?raw=true" style = "width: 210px !important; height: 420px !important;"/>

<img src="https://github.com/alem-01/alem_public/blob/master/resources/secureNotes.02.png?raw=true" style = "width: 210px !important; height: 420px !important;"/>

<img src="https://github.com/alem-01/alem_public/blob/master/resources/secureNotes.03.png?raw=true" style = "width: 210px !important; height: 420px !important;"/>
</center>


 
### Second Part:

- Screen to add item
- If one of the fields are empty show error
- Date textfield should be read only, and open DatePicker when clicked, then it should show the selected date
- When keyboard opens it shouldn't display any layout errors
- Implement dismiss keyboard when tap on empty space

<center>
<img src="https://github.com/alem-01/alem_public/blob/master/resources/secureNotes.04.png?raw=true" style = "width: 210px !important; height: 420px !important;"/>

<img src="https://github.com/alem-01/alem_public/blob/master/resources/secureNotes.05.png?raw=true" style = "width: 210px !important; height: 420px !important;"/>

</center>

### Third Part:

- Edit Screen
- Show text in textfields to edit

### Fourth Part:

Add sqflite package, so your notes will be saved, even when app reloads

When app loads it should get notes from database

```jsx
class Database {
Database _db;

    Future create() async {
        Directory path = await getApplicationDocumentsDirectory();
        String dbPath = join(path.path, "database.db");

        _db = await openDatabase(dbPath, version: 1);
    }
}
```

Database class should also have CRUD methods like getAllNotes, deleteAllNotes, addNote, deleteNote, updateNote.

- getAllNotes
- deleteAllNotes
- addNote
- deleteNote
- updateNote

### Fifth Part:

Make a biometric authentication. Make sure that notes are not accessible without firstly authenticating user.

> Note: you may use local_auth

### Sixth Part:

Localize your apllication https://flutter.dev/docs/development/accessibility-and-localization/internationalization
