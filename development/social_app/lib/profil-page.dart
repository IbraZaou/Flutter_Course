import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          topBox,
          followSection,
          textSection,
          buttonSection,
        ],
      ),
    );
  }
}

Widget topBox = Container(
  padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
  width: double.infinity,
  decoration: const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.blue,
        Colors.tealAccent,
      ],
    ),
  ),
  child: Column(
    children: [
      imageProfile,
      textProfile,
    ],
  ),
);

Widget imageProfile = Container(
  padding: EdgeInsets.all(4),
  height: 150,
  width: 150,
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(75),
    boxShadow: [
      BoxShadow(
          color: Colors.black.withOpacity(0.2),
          spreadRadius: 1,
          blurRadius: 5,
          offset: const Offset(0, 3)),
    ],
  ),
  child: ClipRRect(
    borderRadius: BorderRadius.circular(100),
    child: Image.asset('assets/img/me2.jpg'),
  ),
);

Widget textProfile = Container(
  child: const Column(
    children: [
      Text(
        'Ibra Zaou',
        style: TextStyle(
            color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 5),
      Text(
        'Développeur Flutter',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 17,
        ),
      ),
      SizedBox(height: 5),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.location_on,
            color: Colors.white,
          ),
          Text(
            'Lyon',
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
        ],
      )
    ],
  ),
);

Widget followSection = Container(
  color: Colors.white,
  padding: EdgeInsets.all(20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        color: Colors.white,
        padding: EdgeInsets.all(20),
        child: const Column(
          children: [
            Text(
              'Posts',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              '3',
              style: TextStyle(color: Colors.teal, fontSize: 15),
            ),
          ],
        ),
      ),
      Container(
        color: Colors.white,
        padding: const EdgeInsets.all(20),
        child: const Column(children: [
          Text(
            'Followers',
            style: TextStyle(
                color: Colors.blue, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            '200',
            style: TextStyle(color: Colors.teal, fontSize: 15),
          ),
        ]),
      ),
      Container(
        color: Colors.white,
        padding: const EdgeInsets.all(20),
        child: const Column(children: [
          Text(
            'Posts',
            style: TextStyle(
                color: Colors.blue, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            '100',
            style: TextStyle(color: Colors.teal, fontSize: 15),
          ),
        ]),
      ),
    ],
  ),
);

Widget textSection = Container(
  color: Colors.white,
  padding: EdgeInsets.all(20),
  width: double.infinity,
  child: const Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'A propos',
        style: TextStyle(
          color: Colors.blue,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
      SizedBox(height: 5),
      Text(
        'Développeur Web et mobile passionné.',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 15,
          height: 1.5,
        ),
      ),
    ],
  ),
);

Widget buttonSection = ElevatedButton(
  style: ElevatedButton.styleFrom(
    padding: const EdgeInsets.all(0),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
    ),
  ),
  child: Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      gradient: LinearGradient(
        colors: <Color>[
          Colors.blue.shade400,
          Colors.tealAccent.shade700,
        ],
      ),
    ),
    padding: const EdgeInsets.fromLTRB(100, 15, 100, 15),
    child: const Text('Suivre', style: TextStyle(fontSize: 20)),
  ),
  onPressed: () {},
);
