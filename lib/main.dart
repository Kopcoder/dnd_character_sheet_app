import 'package:flutter/material.dart';

import 'router.dart' as LocalRouter;
import 'constants.dart';

import 'package:dnd_character_sheet_app/view/character_list_view.dart';
import 'package:dnd_character_sheet_app/view_model/character_list_view_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late CharacterListViewModel characterListViewModel;

  _MyAppState() {
    characterListViewModel = CharacterListViewModel();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: CharacterListView(characterListViewModel: characterListViewModel),
      ),
      onGenerateRoute: LocalRouter.Router.generateRoute,
      initialRoute: listRoute,
      theme: ThemeData(
      scaffoldBackgroundColor: const Color(0xFF302727),

        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Color(0xFF302727),
            fontSize: 25,
            fontFamily: 'Lancelot'
          )
        ),
        
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
            backgroundColor: const Color(0xFFAD9090),
            foregroundColor: const Color(0xFF302727),
            padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            side: const BorderSide(width: 5.0, color: Color(0xFF302727)),
          ),
        ),

        scrollbarTheme: const ScrollbarThemeData(
          radius: Radius.circular(10),
          thumbColor: MaterialStatePropertyAll(Color(0xFFAD9090)),
          mainAxisMargin: 10.0,
        )
      ),
    );

  }
}
