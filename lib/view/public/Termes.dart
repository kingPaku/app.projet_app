import 'package:flutter/material.dart';

class Termes extends StatefulWidget {
  const Termes({super.key});

  @override
  State<Termes> createState() => _TermsState();
}

class _TermsState extends State<Termes> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 0.0,
          elevation: 1,
          title: Text("termes & conditions".toUpperCase(),
          style: const TextStyle(
            color: Colors.white, 
           // fontSize: 17.0,  
          ),
          ),
          backgroundColor: Theme.of(context).primaryColor,
          iconTheme: IconThemeData(
            color: Colors.white, 
          ),
        ),
        body: Padding(  
          padding: const EdgeInsets.only(  
            left: 20,
            right: 20,
            bottom: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height:10.0),
              const Expanded(
                child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Bonjour, voici nos termes et conditions :\n\n"
                        "1. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n"
                        "2. Sed tincidunt lacus id massa aliquet, ac cursus velit euismod.\n"
                        "3. Fusce vel turpis ac neque aliquam vulputate sed ut urna.\n"
                        "4. Mauris quis mauris sed ligula fermentum luctus.\n"
                        "5. Etiam auctor tortor ac felis convallis, sed rutrum urna eleifend.\n"
                        "6. Nulla facilisi. Suspendisse faucibus est vel urna dignissim, at dignissim nibh congue.\n"
                        "7. Suspendisse convallis mauris id nibh accumsan, quis gravida nulla convallis.\n"
                        "8. In hac habitasse platea dictumst. Sed euismod neque nec turpis rutrum, auctor auctor ex malesuada.\n"
                        "9. Donec quis lectus a lorem dignissim suscipit.\n"
                        "10. Nullam a tortor sit amet erat posuere gravida.\n"
                        "11. Phasellus lacinia diam eget tincidunt tincidunt.\n"
                        "12. Sed ac orci et risus lacinia ultricies.\n"
                        "13. Integer sed elit aliquam, consectetur felis id, mattis lectus.\n"
                        "14. Proin non ligula vehicula, hendrerit metus at, ultrices turpis.\n"
                        "15. Nullam non mauris eu mi viverra fringilla.\n"
                        "16. In hac habitasse platea dictumst. Aenean ornare neque non lectus fringilla, a commodo nisi ultrices.\n"
                        "17. Donec euismod diam a eleifend pulvinar.\n"
                        "18. Cras ac nunc finibus, semper justo eu, venenatis lectus.\n"
                        "19. Quisque a massa eu ante tincidunt aliquet.\n"
                        "20. Fusce eleifend odio vel mi efficitur porttitor."),
                  ],
                ),
               ), 
                ),
              const SizedBox(height: 10.0),
              ElevatedButton( 
                onPressed: () =>print("Acceptation"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,
                ),
               child: Padding(         
                padding: const EdgeInsets.symmetric( vertical:15.0),
                child: Text("accepter".toUpperCase(),
                style: const TextStyle(
                color: Colors.white,
                
                
                )
               ),))
            ],
          ),
        )
      ),
      );
  }
}