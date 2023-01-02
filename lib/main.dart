import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:time_app/screens/home_page.dart';

import 'models/theme_data.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TimeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          Provider.of<TimeProvider>(context).isDayTime ? lightTheme : darkTheme,
      home: HomePage(),
    );
  }
}

final lightTheme = ThemeData(
  primarySwatch: Colors.blue,
  brightness: Brightness.light,
);

final darkTheme = ThemeData(
  primarySwatch: Colors.grey,
  brightness: Brightness.dark,
);
