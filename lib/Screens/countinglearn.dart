import 'package:flutter/material.dart';
import 'package:kids_play_mob_app/Screens/videocounting.dart';
import 'package:kids_play_mob_app/model/counting.dart';
class CountingSceen extends StatefulWidget {
  const CountingSceen({Key? key}) : super(key: key);

  @override
  State<CountingSceen> createState() => _CountingSceenState();
}

class _CountingSceenState extends State<CountingSceen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('Assets/Images/background.jpg'),
              fit: BoxFit.cover)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body:SafeArea(
            child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(CountingD.listOfCounting.length, ((index) {
                  return GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (c){
                          return VideosScreenco(countingD: CountingD.listOfCounting[index]);
                        }));
                      },
                      child:buildCard(CountingD.listOfCounting[index])
                  );

                }))),
          )),
    );
  }
}
Widget buildCard(CountingD countingD) {
  return Card(
    elevation: 5,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    child: Column(
      children: [
        Image(
          image: AssetImage(countingD.image1),
          height: 150,
          width: 150,
        ),
      ],
    ),
  );
}
