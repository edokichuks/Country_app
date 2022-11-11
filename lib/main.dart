import 'package:flutter/material.dart';
import 'package:hng_task3/features/countries/views/countries_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HNG TASK 3',
      theme: ThemeData(
     
        primarySwatch: Colors.blue,
      ),
      home: const Countries()
    );
  }
}
