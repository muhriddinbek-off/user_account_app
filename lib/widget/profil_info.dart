import 'package:flutter/material.dart';

class ProfilInfo extends StatelessWidget {
  final String username;
  final String contact;
  final String email;

  const ProfilInfo({
    super.key,
    required this.username,
    required this.contact,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        accountInformation(Icons.person, 'Username', username),
        accountInformation(Icons.call, 'Contact', contact),
        accountInformation(Icons.mail, 'Email ', email),
      ],
    );
  }

  Widget accountInformation(IconData icon, String name, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [Icon(icon, size: 50), const SizedBox(width: 10), Text(name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700))],
          ),
          SizedBox(width: 210, child: Expanded(child: Container(alignment: Alignment.centerRight, child: Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400))))),
        ],
      ),
    );
  }
}
