 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget _images(){
  return Container(
    decoration: const BoxDecoration(
      color:Colors.black26
    ),
    child: Column(
      children: [
        Image.network("https://www.thedesignwork.com/wp-content/uploads/2011/10/Random-Pictures-of-Conceptual-and-Creative-Ideas-02.jpg"),
        Image.network("https://images1.penguinrandomhouse.com/author/22627"),
        Image.network("https://i.gifer.com/origin/68/68b376b5408907275c063e2c719fd9d9_w200.gif"),
        Image.network("https://imgv3.fotor.com/images/homepage-feature-card/Random-image-generator_5.jpg"),
      ],
    )
  );
}
 Widget _buildGrid() => GridView.extent(
     maxCrossAxisExtent: 150,
     padding: const EdgeInsets.all(4),
     mainAxisSpacing: 4,
     crossAxisSpacing: 4,
     children: _buildGridTileList(30));

 List<Container> _buildGridTileList(int count) => List.generate(
     count, (i) => Container(
     child: Image.asset('images/pic$i.jpg')
 )
 );

class MyImageLayout extends StatelessWidget{
  const MyImageLayout ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _buildGrid(),
    );
  }

}

 class MyApp2 extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home: Scaffold(
         appBar: AppBar(
           title: Text('Image Grid'),
         ),
         body: MyImageLayout(),
       ),
     );
   }
 }