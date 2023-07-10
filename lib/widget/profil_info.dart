import 'package:flutter/material.dart';

class ProfilInfo extends StatelessWidget {
  const ProfilInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        accountInformation(Icons.person, 'Username', 'MorganJamesDesigner'),
        accountInformation(Icons.call, 'Contact', '+24500000000'),
        accountInformation(Icons.mail, 'Email ', 'mjdesigner@gmail.com'),
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
          Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
        ],
      ),
    );
  }
}
