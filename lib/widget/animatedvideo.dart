import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AnimatedVideo extends StatefulWidget {
  const AnimatedVideo({Key? key}) : super(key: key);

  @override
  State<AnimatedVideo> createState() => _AnimatedVideoState();
}

class _AnimatedVideoState extends State<AnimatedVideo> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(bottom: 16),
        child:SizedBox(height: 130,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width-(MediaQuery.of(context).size.width*0.03),
                  decoration: BoxDecoration(borderRadius:BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(50),
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(10)),
                      color: Color(0xffFF0000),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            spreadRadius: 0,
                            blurRadius: 13,
                            offset: Offset(0,4)
                        )
                      ]
                  ),

                ),
                Padding(padding: EdgeInsets.only(left: 26,bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(padding: EdgeInsets.only(left: 10,bottom: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('Animation Videos',style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: 18 ),),

                          ],
                        ),
                      ),
                      Container(
                        height: 350,
                        width: 120,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('Assets/Images/videos.png',)
                            )
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
        )
    );
  }
}
