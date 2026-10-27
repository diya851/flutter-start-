import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
 final String name="diya";
   final int age = 21;
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Material(
        child:Center(
          child: Container(
            child:Text("hello $name my $age ")
          ),
        )

      )
        );
  }
}
