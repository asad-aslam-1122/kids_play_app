import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kids_play_mob_app/model/blog.dart';

class MyHorizentalList extends StatelessWidget {
  final Blog blog;
       MyHorizentalList(
      {Key? key,required this.blog,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(padding: EdgeInsets.only(right:20 ),
      child: Container(
        width: 246,
        height: 349,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(22),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(1,0.0),
            colors: [
              Color(blog.color1),
              Color(blog.color2)
            ]
          )
        ),
        child: Stack(
          children: [
            Positioned(
              left: 11,top: 15,
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 39,

                  decoration: BoxDecoration(
                    color: Color(0xffFD5602),
                    borderRadius: BorderRadius.circular(36)
                  ),
                  child: Text(blog.headline,style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 16),),
                )
            ),
            Positioned(
                left: 40,top: 80,
                child: Container(

                  child: Text(blog.title1,style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 25 ),),
                )
            ),
            Positioned(
                bottom: 0,right: 0,
                child: Image.asset(blog.image1,height: 200,width: 200,scale: 2,)
                )

          ],
        ),

      ),
    );
  }
}
