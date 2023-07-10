import 'package:flutter/material.dart';

class MyProfil extends StatelessWidget {
  const MyProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      height: 56,
      width: 346,
      decoration: BoxDecoration(color: Colors.blue[100], borderRadius: BorderRadius.circular(30)),
      child: InkWell(
        child: ListTile(
          onTap: () {
            Navigator.pushNamed(context, '/home-page');
          },
          leading: const Icon(Icons.person, color: Colors.black, size: 57),
          title: const Text('My Profil', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
          trailing: Image.asset('assets/images/next.png'),
        ),
      ),
    );
  }
}
