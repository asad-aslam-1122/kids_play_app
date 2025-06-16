import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kids_play_mob_app/model/videos.dart';

class MyVerticalList extends StatelessWidget {
  const MyVerticalList(
      {Key? key, required this.videos,
      })
      : super(key: key);
  final Videos videos;


  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(bottom: 2),
    child:SizedBox(height: 110,
    child: Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          height: 92,
          width: MediaQuery.of(context).size.width-(MediaQuery.of(context).size.width*0.03),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
            color: Color(0xffFE6E00),
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
        Padding(padding: EdgeInsets.only(left: 26,bottom: 19),
        child: Row(
          children: [
            Container(
              height: 115,
              width: 115,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(videos.image)
                )
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(videos.title,style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 18 ),),
                Text(videos.description,style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontSize: 12 ),)
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
