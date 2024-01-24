import "package:flutter/material.dart";
import "package:projet_app/view/public/Auth.dart";


void main() => runApp(Myapp());
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoolsearch',
      debugShowCheckedModeBanner: false,
      home : Authentification(),
    );
  }
}
