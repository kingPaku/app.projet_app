import 'package:flutter/material.dart';
import 'package:projet_app/view/public/Connec.dart';
import 'package:projet_app/view/public/Termes.dart';




class Inscription extends StatefulWidget {
  const Inscription({super.key});

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  bool _isSecret = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       appBar: AppBar(
        leading: IconButton(onPressed: retourConnec,
           icon: const Icon(Icons.arrow_back)),
       ),
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 30.0
            ),
            child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            
              RichText(text: TextSpan(
                text:"l'education est un element primordial pour le bon developpement d'un individu\n".toUpperCase(),
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
              const SizedBox(height: 10.0),

              const Text("nous vous donnons le choix ",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                
              ) ),
            
              const SizedBox(height:40.0),

              Form(child: 
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text("Entrez votre nom :"),
                  const SizedBox(height: 10.0),

                  TextFormField(
                    decoration: 
                    InputDecoration(
                      hintText: "Ethan hunte",
                      border:
                       OutlineInputBorder(
                         borderRadius: BorderRadius.circular(0.0),
                      borderSide: const BorderSide(color: Colors.grey)
                    ),
                    focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(0.0),
                      borderSide: const BorderSide(color: Colors.blue)
                    )
                    ),
                  ),
                  const SizedBox(height: 10.0,),
                  const Text("Tapez votre Email :"),
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
                  const SizedBox(height: 10.0,),

                  const Text("Tapez votre mot de passe :"),
                  const SizedBox(height: 10.0,),

                  TextFormField(
                 obscureText: _isSecret,
                    decoration: 
                    InputDecoration(
                     suffixIcon: GestureDetector(
                      onTap: ()=> setState(() {
                        _isSecret = !_isSecret;
                      }),
                      child: Icon(
                        !_isSecret?
                        Icons.visibility:
                        Icons.visibility_off,
                      ),
                     ),
                      hintText: "Ex:isje34DE",
                      border: 
                      OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0.0),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: 
                      OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0.0),
                        borderSide: const BorderSide(color: Colors.blue)
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  const Text("Confirmer votre mot de passe:"),
                  const SizedBox(height: 10.0),

                  TextFormField(
                    obscureText: _isSecret,
                    decoration : 
                    InputDecoration(
                     suffixIcon: GestureDetector(
                      onTap: () =>  setState(() {
                          _isSecret = !_isSecret;
                      }),
                      child: Icon(
                        !_isSecret?
                        Icons.visibility:
                        Icons.visibility_off
                      ),
                     ),
                      hintText: "Ex:isje34DE",
                      border:
                      OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0.0),
                        borderSide: const BorderSide(color: Colors.grey)
                      ),
                      focusedBorder: 
                       OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0.0),
                        borderSide: const BorderSide(color: Colors.blue)
                      ),
                    ),
                  ),
                  const SizedBox(height:25.0),

                  ElevatedButton(
                    onPressed: versTermes,
                   style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    elevation: 1,
                   ), 
                   child: Padding(
                    padding: const EdgeInsets.symmetric( 
                      vertical: 15.0),
                    child:  Text("Continue".toUpperCase(),
                   style: const TextStyle(
                    color: Colors.white,
                    ),
                    ),
                   ),
                   
                   ),
                ],
              ),
              ),
            ],
          ),
          ),
        ),
      ),
    );
  }


void versTermes(){
 Navigator.push(context, MaterialPageRoute(builder: (context) => const Termes(),
 ),
 );
}

void retourConnec(){
  Navigator.push(context, MaterialPageRoute(builder: (context) => const Connection(),
  ),
  );
}

}