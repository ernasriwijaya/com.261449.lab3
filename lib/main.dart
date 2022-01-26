import 'package:flutter/material.dart';
import 'package:com_261449_lab3/view/splashpage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
        ),
        darkTheme: ThemeData.dark(),
        title: 'Lazywear.my',
        home: const Scaffold(
          body: SplashPage(),
        ));
  }
}
