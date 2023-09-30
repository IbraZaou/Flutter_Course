import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [post1, post2, post3],
        ),
      ),
    );
  }
}

Widget post1 = Container(
  padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
  margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
          color: Colors.black.withOpacity(0.2),
          spreadRadius: 1,
          blurRadius: 5,
          offset: const Offset(0, 3)),
    ],
  ),
  child: Column(
    children: [
      Row(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(10, 0, 15, 0),
            height: 50,
            width: 50,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset('assets/img/me2.jpg'),
            ),
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ibra Zaou',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Text('Lyon'),
            ],
          )
        ],
      ),
      const SizedBox(height: 10),
      Image.asset('assets/img/portfolio.png'),
      Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.comment,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
              color: Colors.grey,
            ),
          )
        ],
      ),
      Container(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Text('Portfolio créer avec REACT JS'),
      )
    ],
  ),
);

Widget post2 = Container(
  padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
  margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
          color: Colors.black.withOpacity(0.2),
          spreadRadius: 1,
          blurRadius: 5,
          offset: const Offset(0, 3)),
    ],
  ),
  child: Column(
    children: [
      Row(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(10, 0, 15, 0),
            height: 50,
            width: 50,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset('assets/img/me2.jpg'),
            ),
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ibra Zaou',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Text('Lyon'),
            ],
          )
        ],
      ),
      const SizedBox(height: 10),
      Image.asset('assets/img/atletics.png'),
      Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.comment,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
              color: Colors.grey,
            ),
          )
        ],
      ),
      Container(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Text(
            'Site Vitrine Atletics Coachings créer avec Wordpress et thème Custom'),
      )
    ],
  ),
);

Widget post3 = Container(
  padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
  margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
          color: Colors.black.withOpacity(0.2),
          spreadRadius: 1,
          blurRadius: 5,
          offset: const Offset(0, 3)),
    ],
  ),
  child: Column(
    children: [
      Row(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(10, 0, 15, 0),
            height: 50,
            width: 50,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset('assets/img/me2.jpg'),
            ),
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ibra Zaou',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Text('Lyon'),
            ],
          )
        ],
      ),
      const SizedBox(height: 10),
      Image.asset('assets/img/oso.png'),
      Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.comment,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
              color: Colors.grey,
            ),
          )
        ],
      ),
      Container(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Text('Boutique en ligne créer avec Shopify'),
      )
    ],
  ),
);
