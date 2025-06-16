import 'package:flutter/material.dart';
import 'package:kids_play_mob_app/Screens/login/Inputfieldlogin.dart';
class InputWraperLogin extends StatelessWidget {
  const InputWraperLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)),
            child: const InputFieldLogin(),
          ),

        ],
      ),
    );
  }
}
