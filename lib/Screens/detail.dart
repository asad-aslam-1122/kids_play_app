import 'package:flutter/material.dart';

import '../model/blog.dart';

class DetailScreen extends StatefulWidget {
  final Blog blog;
  DetailScreen({Key? key, required this.blog}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
        body: SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: size.height*0.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.blog.image2),
                fit: BoxFit.cover
              )
            ),

          ),
          Container(

            margin: EdgeInsets.only(top: size.height*0.45),
            decoration: BoxDecoration(
                color: Colors.white,
              borderRadius: BorderRadius.circular(50)
            ),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    child: Container(
                      width: 145,
                      height: 7,
                      decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent,
                        borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Text(widget.blog.title2,
                  style: TextStyle(
                    fontSize: 20,
                      height: 1.5
                  ),),
                  SizedBox(height: 25,),
                  Text(widget.blog.description,
                  style: TextStyle(height: 1.6),)
                ],
              ),
            ),

          )
        ],
      ),
    ));
  }
}
