import 'package:flutter/material.dart';

import 'InputAdminfield.dart';

class InputAdminLogin extends StatelessWidget {
  const InputAdminLogin({Key? key}) : super(key: key);
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
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: const InputAdminField(),
          ),
        ],
      ),
    );
  }
}
