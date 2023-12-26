
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarApp extends StatelessWidget{
  const AppBarApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AppBarSample(),
    );
  }
}

class AppBarSample extends StatelessWidget {
  const AppBarSample ({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
      title: const Text("Material 2"),
       actions: <Widget>[
         IconButton(
           icon: const Icon(Icons.add_alert),
           tooltip: 'Show Snackbar',
           onPressed: (){
             ScaffoldMessenger.of(context).showSnackBar(
               const SnackBar(content: Text("This is a snackbar."))
             );
           },
         ),
         IconButton(
           icon: const Icon(Icons.navigate_next),
           tooltip: "Go to next page",
           onPressed: (){
             Navigator.push(context, 
             MaterialPageRoute<void>(
               builder: (BuildContext context){
                 return Scaffold(
                   appBar: AppBar(
                     title: const Text("Next Page"),
                   ),
                   body:
                   const Center(
                     child: Text(
                       'This is the 2nd Page.',
                       style: TextStyle(fontSize: 30),
                     )
                   ),
                 );
               }
             )
             );
           },
         ),
       ],
     ),
     body:
     const Center(
       child:Text(
         'This is the Home Page',
         style: TextStyle(fontSize: 30),
       )
     ),
   );
  }
}