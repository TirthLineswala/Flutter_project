import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/models/taskdata.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:task/screens/notesScreen.dart';
// import 'firebase_options.dart';
// import 'package:task/screens/notes_screen.dart'; // Your updated Notes screen

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NoteData(),
      child: MaterialApp(
        initialRoute: NotesScreen.id, // Use NotesScreen as the initial screen
        routes: {
          // Temporarily remove these routes
          // WelcomeScreen.id: (context) => WelcomeScreen(),
          // LoginScreen.id: (context) => LoginScreen(),
          // RegistrationScreen.id: (context) => RegistrationScreen(),
          NotesScreen.id: (context) => NotesScreen(), // Updated route to Notes screen
        },
      ),
    );
  }
}
