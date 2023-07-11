import 'package:flutter/material.dart';
import 'package:user_account_app/core/user_random.dart';
import 'package:user_account_app/modal/modal_information.dart';

import '../widget/profil_info.dart';
import '../widget/social_network.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ModalInformation userInformation = ModalInformation(
    email: '',
    firstName: '',
    image: '',
    lastSName: '',
    phone: '',
    userName: 'asdfasd',
  );

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
        body: FutureBuilder(
            future: userRandom(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (snapshot.hasData) {
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Stack(
                              children: [
                                // TODO: Add image from internet
                                ClipRRect(borderRadius: BorderRadius.circular(70), child: Image.network(snapshot.data!.image, height: 120, width: 120, fit: BoxFit.cover)),
                                Positioned(bottom: 10, right: 10, child: Container(height: 19, width: 19, decoration: BoxDecoration(color: const Color(0xFF57FB0A), borderRadius: BorderRadius.circular(20)))),
                              ],
                            ),
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  // TODO: Get data from API
                                  child: Text('${snapshot.data!.firstName} ${snapshot.data!.lastSName}', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
                                ),
                                const Positioned(top: -10, right: -100, child: Icon(Icons.edit, size: 40)),
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
                          children: [
                            const Text('PROFILE', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
                            const Divider(thickness: 4),
                            // FIXME: Get data from API
                            ProfilInfo(
                              contact: snapshot.data!.phone,
                              email: snapshot.data!.email,
                              username: snapshot.data!.userName,
                            ),
                            const Divider(thickness: 3),
                            const SizedBox(height: 12),
                            const Text('Other Ways People Can Find Me', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
                            const SizedBox(height: 34),
                            const SocialNetwork(),
                            const SizedBox(height: 40),
                            const Divider(thickness: 3),
                            const SizedBox(height: 10),
                            const ListTile(
                              leading: Icon(Icons.info, color: Colors.black, size: 40),
                              title: Text('Help and Feedback', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                              trailing: Icon(Icons.east, size: 40, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              } else {
                return const Center(
                  child: Text('Error'),
                );
              }
            }),
      ),
    );
  }
}
