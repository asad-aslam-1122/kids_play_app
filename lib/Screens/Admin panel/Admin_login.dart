import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'Inputwraperlogin.dart';

class AdminLogin extends StatelessWidget {
  const AdminLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.deepOrange,
          Colors.deepOrangeAccent,
          Colors.orange
        ])),
        child: Column(
          children: [
            Lottie.asset('Assets/animation/fruits.json', height: 200),
            const Center(
              child: Text(
                'Admin Panal ',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    )),
                child: const InputAdminLogin(),
              ),
            )
          ],
        ),
      ),
    );
    ;
  }
}
