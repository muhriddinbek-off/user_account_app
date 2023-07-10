import 'package:flutter/material.dart';

class SocialNetwork extends StatelessWidget {
  const SocialNetwork({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      height: 56,
      width: 346,
      decoration: BoxDecoration(color: const Color.fromARGB(255, 142, 183, 216), borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          iconNetwork('assets/logo/twitter.png'),
          iconNetwork('assets/logo/instagram.png'),
          iconNetwork('assets/logo/facebook.png'),
          iconNetwork('assets/logo/linkidin.png'),
        ],
      ),
    );
  }

  Widget iconNetwork(String image) {
    return Image.asset(image, height: 40, fit: BoxFit.fill);
  }
}
