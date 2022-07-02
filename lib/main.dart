import 'package:flutter/material.dart';
import 'package:movie_app/widgets/autf/autf_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme (backgroundColor: const Color.fromRGBO(3, 37, 65, 1)),
        primarySwatch: Colors.blue,
      ),
      home: AutfWidget(),
    );
  }
}

