import 'package:flutter/material.dart';
import 'package:task_app/widgets/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task App',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Color.fromRGBO(71, 80, 133, 1),
          secondary: Color.fromRGBO(252, 92, 99, 1),
        ),
        textTheme: TextTheme(
          bodyText2: TextStyle(
            fontFamily: 'Righteous',
            color: Colors.black,
          ),
          subtitle1: TextStyle(
            fontFamily: 'Righteous',
            color: Colors.black,
          ),
          button: TextStyle(
            fontFamily: 'Righteous',
            color: Colors.black,
          ),
        ),
      ),
      home: Home(),
    );
  }
}
