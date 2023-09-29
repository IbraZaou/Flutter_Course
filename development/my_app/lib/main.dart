import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Voyage',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //Header
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 0, 0),
          title: const Text('Mazda MX5'),
          centerTitle: true,

          // Bouton Nav burger (leading en gros route)
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),

          // Bouton enregister a droite
          actions: [
            IconButton(
              icon: const Icon(Icons.bookmark_border),
              onPressed: () {},
            ),
          ],
        ),

        //Body
        //Le champ Column contrairement au champ Center par exemple il peut avoir plusieurs enfant (child // Children)
        body: Container(
          child: const SingleChildScrollView(
            child: Column(children: [
              ImageSection(),
              TitleSection(),
              TextSection(),
              IconSection(),
              VoitureSection(),
              ButtonSection()
            ]),
          ),
        ));
  }
}

//L'image

class ImageSection extends StatelessWidget {
  const ImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/img/mx5.jpg');
  }
}

// Titre

class TitleSection extends StatelessWidget {
  const TitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 100%
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child:
          const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'Cabriolet 89 - 97',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Mazda Miata NA',
        )
      ]),
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: const Text(
          "À sa sortie en 1989, le roadster japonais a secoué le landerneau automobile. Près de 30 plus tard, il n'a rien perdu de son impact."),
    );
  }
}

class IconSection extends StatelessWidget {
  const IconSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Container(
          height: 70,
          width: 70,
          color: Colors.white,
          child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.speed,
                  color: Colors.red,
                  size: 20,
                ),
                Text('Vitesse', style: TextStyle(color: Colors.red))
              ]),
        ),
        Container(
          height: 70,
          width: 70,
          color: Colors.white,
          child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.currency_bitcoin,
                  color: Colors.red,
                  size: 20,
                ),
                Text(
                  'Prix',
                  style: TextStyle(color: Colors.red),
                )
              ]),
        ),
        Container(
          height: 70,
          width: 70,
          color: Colors.white,
          child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 20,
                ),
                Text('90/100', style: TextStyle(color: Colors.red))
              ]),
        ),
      ]),
    );
  }
}

class VoitureSection extends StatelessWidget {
  const VoitureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/img/mx5nc.jpg',
              width: 150,
              height: 150,
            ),
          ),
          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/img/mx5nd.jpg',
                width: 150, // Set your desired width
                height: 150, // Set your desired height),
              ))
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              textStyle: const TextStyle(fontSize: 20),
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)))),
          child: const Text('Commander'),
          onPressed: () {},
        ));
  }
}
