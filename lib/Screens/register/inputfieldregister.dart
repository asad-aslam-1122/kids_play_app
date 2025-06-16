import 'package:flutter/material.dart';
import 'package:kids_play_mob_app/Screens/login/login.dart';
import '../home_screen.dart';

class InputFieldRegister extends StatefulWidget {
  const InputFieldRegister({Key? key}) : super(key: key);
  @override
  State<InputFieldRegister> createState() => _InputFieldRegisterState();
}

class _InputFieldRegisterState extends State<InputFieldRegister> {
  final formkey = GlobalKey<FormState>();
  var email = "";
  var password = "";
  //Text editing controller
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    //User Register through Firebase
    // userlogin() async {
    //   try {
    //     await FirebaseAuth.instance
    //         .createUserWithEmailAndPassword(email: email, password: password);
    //
    //   } on FirebaseAuthException catch (e) {
    //     if (e.code == 'weak-password') {
    //       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
    //           backgroundColor: Colors.deepOrange,
    //           content: Text(
    //             'Weak Password ',
    //             style: TextStyle(color: Colors.white, fontSize: 20),
    //           )));
    //     } else if (e.code == 'email-already-in-use') {
    //       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
    //           backgroundColor: Colors.deepOrange,
    //           content: Text(
    //             'User already exist',
    //             style: TextStyle(color: Colors.white, fontSize: 20),
    //           )));
    //     }
    //   }
    // }

    return Form(
      key: formkey,
      child: Column(
        children: [
          //Input Name Field
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey))),
            child: TextFormField(
              autofocus: false,
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                  hintText: "Enter your Name",
                  hintStyle: TextStyle(color: Colors.black45),
                  border: InputBorder.none),
            ),
          ),
          //Input Email Field
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey))),
            child: TextFormField(
              autofocus: false,
              controller: emailcontroller,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Enter Email';
                } else if (!value.contains('@')) {
                  return 'Please Enter valid Email';
                }
                return null;
              },
              decoration: const InputDecoration(
                  hintText: "Enter your Email",
                  hintStyle: TextStyle(color: Colors.black45),
                  border: InputBorder.none),
            ),
          ),
          //Input Password Field
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey))),
            child: TextFormField(
              autofocus: false,
              controller: passwordcontroller,
              textInputAction: TextInputAction.done,
              obscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Enter Valid Password';
                }
                return null;
              },
              decoration: const InputDecoration(
                  hintText: "Enter your Password",
                  hintStyle: TextStyle(color: Colors.black45),
                  border: InputBorder.none),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          //Register Button
          GestureDetector(
            child: Container(
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 50),
              decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                child: Text(
                  " Register",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            onTap: () {
              if (formkey.currentState!.validate()) {
                setState(() {
                  email = emailcontroller.text;
                  password = passwordcontroller.text;
                });
              }
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  backgroundColor: Colors.deepOrange,
                  content: Text(
                    'Register Successfully logged in..',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )));
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                      (route) => false);
            },
          ),
          const SizedBox(
            height: 25,
          ),
          //Button for Login Page
          GestureDetector(
            child: const Text(
              'Have  account? Login',
              style: TextStyle(color: Colors.black45),
            ),
            onTap: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                  (route) => false);
            },
          ),
        ],
      ),
    );
  }
}
