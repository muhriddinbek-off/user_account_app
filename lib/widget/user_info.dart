import 'package:flutter/material.dart';
import 'package:user_account_app/widget/my_profil.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        active(),
        const MyProfil(),
        massage(),
        information('My Portfolio', Icons.business_center),
        information('Location', Icons.location_on_outlined),
        information('Settings', Icons.settings),
      ],
    );
  }

  Widget information(String title, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: ListTile(
        leading: Icon(icon, size: 50, color: Colors.black),
        title: Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
        trailing: Image.asset('assets/images/next.png'),
      ),
    );
  }

  Widget massage() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: ListTile(
        leading: const Icon(Icons.email, size: 50, color: Colors.black),
        title: const Text('Messages', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
        trailing: Container(alignment: Alignment.center, height: 28, width: 34, decoration: BoxDecoration(color: const Color(0xFF109BB9), borderRadius: BorderRadius.circular(30)), child: const Text('3', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800))),
      ),
    );
  }

  Widget active() {
    return Padding(
      padding: const EdgeInsets.only(right: 12, left: 28),
      child: ListTile(
        leading: const Icon(Icons.circle, size: 20, color: Colors.orange),
        title: const Text('Active', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
        trailing: Image.asset('assets/images/past.png'),
      ),
    );
  }
}
