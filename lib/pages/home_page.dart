import 'package:flutter/material.dart';
import 'package:user_account_app/widget/profil_info.dart';
import 'package:user_account_app/widget/social_network.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        Image.asset('assets/images/avatar.png'),
                        Positioned(bottom: 10, right: 10, child: Container(height: 19, width: 19, decoration: BoxDecoration(color: const Color(0xFF57FB0A), borderRadius: BorderRadius.circular(20)))),
                      ],
                    ),
                    Stack(
                      clipBehavior: Clip.none,
                      children: const [
                        Padding(padding: EdgeInsets.symmetric(vertical: 10), child: Text('Morgan James', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700))),
                        Positioned(top: -10, right: -100, child: Icon(Icons.edit, size: 40)),
                      ],
                    ),
                    const Text('UI/UX Designer', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
                  ],
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ListView(
                  children: const [
                    Text('PROFILE', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
                    Divider(thickness: 4),
                    ProfilInfo(),
                    Divider(thickness: 3),
                    SizedBox(height: 12),
                    Text('Other Ways People Can Find Me', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
                    SizedBox(height: 34),
                    SocialNetwork(),
                    SizedBox(height: 40),
                    Divider(thickness: 3),
                    SizedBox(height: 10),
                    ListTile(
                      leading: Icon(Icons.info, color: Colors.black, size: 40),
                      title: Text('Help and Feedback', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                      trailing: Icon(Icons.east, size: 40, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
