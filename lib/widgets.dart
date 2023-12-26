import 'package:flutter/material.dart';

// Network Image.
class MyImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: 
      Row(
        children: [
         Image.network("https://cdn-icons-png.flaticon.com/512/5372/5372211.png",
         width: 100,
         height: 100,
         ),
          Image.network("https://www.cambridge.org/elt/blog/wp-content/uploads/2019/07/Sad-Face-Emoji.png",
            width: 100,
            height: 100,),
        ],
      ),
    );
  }
  
}


// Rich Text

class MyRichText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return  Container(
    child:
    Column(
      children: [
        RichText(
           text:  TextSpan(
             text: 'Richtext.flutter',
             style: DefaultTextStyle.of(context).style,
             children:
               const <TextSpan>[
                 TextSpan(text: 'bold', style:
                 TextStyle(fontWeight: FontWeight.bold)
                 ),
                 TextSpan(text: "Widget"),
               ]
           ),
        )
      ],
    ),
  );
  }
  
}