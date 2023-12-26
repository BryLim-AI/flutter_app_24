import 'package:flutter/material.dart';
import 'package:flutter_app_24/widgets.dart';

// Widgets describe what their view should look like given their current configuration and state.

void main() {
runApp(
  // const MaterialApp(
  //   title:"Flutter.Dev.2024",
  //   home:SafeArea(
  //       child:myButton()
  //   )
  // )
   MaterialApp(
    home:Scaffold(
      body:Center(
        child: MyRichText(),
      )
    )
  )
);
}

// -------------------- Stateless --------------------  it does not change.

class myAppBar extends StatelessWidget {
 const myAppBar({required this.ttle, super.key});
  final Widget ttle;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(color: Colors.blue[500]),
      // Row
      child: Row(
        children: [
          const IconButton(onPressed: null,
              icon: Icon(Icons.safety_check),
            tooltip: "Navigation Menu",
          ),
         Expanded(child: ttle),
         const IconButton(onPressed: null,
             icon: Icon(Icons.search),
           tooltip: "Search",
         ),
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget{
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) {
      return Material(
        child:Column(
          children: [
              myAppBar(ttle:
              Text("Hello.Flutter.2024",
              style: Theme.of(context)
                  .primaryTextTheme
                  .titleLarge
              ),
              ),
            const Expanded(child:
            Center(
              child: Text(
                "Hello.Flutter.Dev.2024"
              ),
            )
            ),

          ],

        )
      );
  }
}

class MaterialApp2 extends StatelessWidget{
  const MaterialApp2 ({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // Using Material Components
    // Use Scaffold layout.
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: const Text('Material.Design'),
        actions: const [
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
      // Body
      body:
      const Center(
        child:Text("Hello.Material.App")
      ),
      floatingActionButton: const FloatingActionButton(onPressed: null,
      tooltip: "Add",
        child: Icon(Icons.add),
      )
      ,
    );
  }
}

// Input Gestures
class myButton extends StatelessWidget{
  const myButton ({super.key});
  @override
  Widget build(BuildContext context) {
   return GestureDetector(
     onTap:(){

     },
     child:
     Container(
       height: 50,
       padding: const EdgeInsets.all(8),
       margin: const EdgeInsets.symmetric(horizontal: 8),
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(5),
         color: Colors.lightGreen[500],
       ),
       child: const Center(
         child: Text("Engage"),
       ),
     ),
   );
  }
}


// -------------------- Stateful --------------------
//that know how to generate State objects, which are then used to hold state.

class counting extends StatefulWidget{
  const counting ({super.key});
  @override
  State<StatefulWidget> createState() => _CountingState();
}

class _CountingState extends State<counting> {
  int counter = 0;

  void incremen() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
   return Row(
     mainAxisAlignment: MainAxisAlignment.center,
     children: <Widget>[
       ElevatedButton(onPressed: incremen,
           child: const Text("Increment"),
       ),
       const SizedBox(width:16),
       Text('Count: $counter'),
     ],
   );
  }
}
