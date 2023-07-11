import 'package:flutter/material.dart';

import '../widget/user_info.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              Positioned(left: -230, right: -150, top: -30, child: Image.asset('assets/images/backgroundimage.png')),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Padding(padding: EdgeInsets.only(left: 12, top: 21), child: Icon(Icons.menu, size: 50)),
                        ],
                      ),
                      CircleAvatar(radius: 60, child: Image.asset('assets/images/avatar.png')),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 14),
                        child: Text('Morgan James', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black)),
                      ),
                      const Text('UI/UX Designer', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black)),
                    ],
                  ),
                  const SizedBox(height: 90),
                  const Expanded(child: UserInfo()),
                  const Padding(padding: EdgeInsets.only(bottom: 40, left: 130), child: Icon(Icons.arrow_back, size: 50)),
                ],
              ),
            ],
          )),
    );
  }
}
