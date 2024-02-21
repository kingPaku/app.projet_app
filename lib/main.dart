import "package:flutter/material.dart";
import 'package:projet_app/view/public/Connec.dart';





void main() => runApp(const Myapp());
class Myapp extends StatelessWidget {
  const Myapp({super.key});         

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Schoolsearch',
      debugShowCheckedModeBanner: false,
      home : Connection(),
      
    );
  }
}
