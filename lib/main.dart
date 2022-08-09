import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/auth/auth_widget.dart';

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
        appBarTheme:
            const AppBarTheme(backgroundColor: Color.fromRGBO(3, 37, 65, 1)),
      ),
      home: const AuthWidget(),
    );
  }
}
