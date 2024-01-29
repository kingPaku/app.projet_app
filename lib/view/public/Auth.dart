import 'package:flutter/material.dart';

class Authentification extends StatefulWidget {
  const Authentification({super.key});

  @override
  State<Authentification> createState() => _AuthentificationState();
}

class _AuthentificationState extends State<Authentification> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: 30.0
            ),
            child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(text: TextSpan(
                text:"faire le choix d'une bonne ecole pour son enfant\n".toUpperCase(),
                style: const TextStyle(
                  color: Colors.black,
                ),
                 children:[
                  TextSpan(
                    text:"c'est lui garantire un avenir prometeur\n".toUpperCase(),
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                    )
                    ),
                  TextSpan(
                    text: "faites le bon choix grace a schoolsearch".toUpperCase(),
                  ),
                 ], 
                 
              )),
              SizedBox(height: 10.0),

              const Text("nous vous donnons le choix ",
              style: TextStyle(
                fontStyle: FontStyle.italic
              ) ),
            
              const SizedBox(height:40.0),

              Form(child: 
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text("Tapez votre Email"),
                  const SizedBox(height: 10.0,),
                  TextFormField(
                    decoration: 
                  InputDecoration(
                    hintText: "Ex:jonathanphillips@gmail.com",
                    border: 
                    OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0.0),
                      borderSide: const BorderSide(color: Colors.grey)
                    ),
                    focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(0.0),
                      borderSide: const BorderSide(color: Colors.blue)
                    )
                  )
                  ),
                  const SizedBox(height:10.0),

                  ElevatedButton(
                    onPressed: () => print("Send"), 
                   child: Padding(
                    padding: const EdgeInsets.symmetric( 
                      vertical: 15.0),
                    child:  Text("Continue".toUpperCase(),
                   style: const TextStyle(
                    color: Colors.white,
                    ),
                    ),
                   ),
                   style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    elevation: 1,
                   ),
                   
                   ),
                ],
              ))
            ],
          ),
          ),
        ),
      ),


    );
      
  }
}