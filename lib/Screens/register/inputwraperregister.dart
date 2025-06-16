import 'package:flutter/material.dart';
import 'inputfieldregister.dart';

class InpurWraperRegister extends StatelessWidget {
  const InpurWraperRegister({Key? key}) : super(key: key);

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
            child: const InputFieldRegister(),
          ),
        ],
      ),
    );
  }
}
