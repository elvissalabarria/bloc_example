import 'package:bloc_example/src/blocs/home/home_bloc.dart';
import 'package:bloc_example/src/blocs/home/home_logic.dart';
import 'package:bloc_example/src/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => HomeBloc(SimpleHomeLigic()),
        child: const HomeScreen(),
      ),
    );
  }
}
