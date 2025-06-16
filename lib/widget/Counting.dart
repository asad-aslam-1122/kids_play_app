import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CountingLearn extends StatefulWidget {
  const CountingLearn({Key? key}) : super(key: key);

  @override
  State<CountingLearn> createState() => _CountingLearnState();
}

class _CountingLearnState extends State<CountingLearn> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(bottom: 16),
        child:SizedBox(height: 130,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width-(MediaQuery.of(context).size.width*0.03),
                  decoration: BoxDecoration(borderRadius:const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(50)),
                      color: const Color(0xff37B6F6),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            spreadRadius: 0,
                            blurRadius: 13,
                            offset: const Offset(0,4)
                        )
                      ]
                  ),

                ),
                Padding(padding: const EdgeInsets.only(left: 26,bottom: 15),
                  child: Row(
                    children: [
                      Container(
                        height: 350,
                        width: 120,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('Assets/Images/Counting.png',)
                            )
                        ),
                      ),
                      Padding(padding: const EdgeInsets.only(left: 10,bottom: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('Counting Learning',style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: 18 ),),

                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
        )
    );
  }
}
