import 'package:flutter/material.dart';
import 'package:kids_play_mob_app/Screens/VideoScreenAlph.dart';
import 'package:kids_play_mob_app/model/alphabet.dart';

class AlphabetGridView extends StatefulWidget {
  const AlphabetGridView({Key? key}) : super(key: key);

  @override
  State<AlphabetGridView> createState() => _AlphabetGridViewState();
}

class _AlphabetGridViewState extends State<AlphabetGridView> {
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
                children: List.generate(AlphabetD.listOfAlphabet.length, ((index) {
                  return GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (c){
                          return VideosScreenAlpha(alphabetD: AlphabetD.listOfAlphabet[index]);
                        }));
                      },
                      child:buildCard(AlphabetD.listOfAlphabet[index])
                  );

                }))),
          )),
    );
  }
}

Widget buildCard(AlphabetD alphabet) {
  return Card(
    elevation: 5,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    child: Column(
      children: [
        Image(
          image: AssetImage(alphabet.image1),
          height: 150,
          width: 150,
        ),
      ],
    ),
  );
}
