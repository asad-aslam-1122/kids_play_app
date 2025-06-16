import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kids_play_mob_app/Screens/login/login.dart';
import 'package:lottie/lottie.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final formkey = GlobalKey<FormState>();
  var email = "";
  final emailcontroller = TextEditingController();

  @override
  // resetpassword() async {
  //   try{
  //     await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  //     ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  //         backgroundColor: Colors.deepOrange,
  //         content: Text('Password Reset mail sent to your Account',style: TextStyle(
  //             color: Colors.white,
  //             fontSize: 20
  //         ),)
  //
  //     ));
  //   }
  //   on FirebaseAuthException catch(e)
  //   {
  //     if(e.code=='user-not-found')
  //       {
  //         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  //             backgroundColor: Colors.deepOrange,
  //             content: Text('User not Found',style: TextStyle(
  //                 color: Colors.white,
  //                 fontSize: 20
  //             ),)
  //
  //         ));
  //       }
  //
  //   }
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Text(
                  'Forget Password',
                  style: GoogleFonts.oswald(
                      fontWeight: FontWeight.bold,
                      color: const Color(0xffFD5602),
                      fontSize: 36),
                ),
              ),
              Lottie.asset('Assets/animation/Forget.json', height: 300),
              Form(
                key: formkey,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.grey))),
                  child: TextFormField(
                    autofocus: false,
                    controller: emailcontroller,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.done,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Email';
                      } else if (!value.contains('@')) {
                        return 'Please Enter valid Email';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: "Enter your Email",
                        hintStyle: TextStyle(color: Colors.black45),
                        border: InputBorder.none),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                child: Container(
                  height: 50,
                  margin: const EdgeInsets.symmetric(horizontal: 50),
                  decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Text(
                      "Send Email",
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
                    });
                  }
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      backgroundColor: Colors.deepOrange,
                      content: Text('Password Reset mail sent to your Account',style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),)

                  ));
                },
              ),
              const SizedBox(
                height: 25,
              ),
              GestureDetector(
                child: const Text(
                  'Login Again??',
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
        ),
      ),
    );
  }
}
