
import 'package:flutter/cupertino.dart';

class MyCApp extends StatelessWidget{
  const MyCApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title:'Flutter Cupertino',
      theme: CupertinoThemeData(
        brightness: Brightness.light,
        primaryColor: CupertinoColors.systemIndigo,
      ),
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          backgroundColor: CupertinoColors.systemIndigo,
          middle: Text("Futter Cuper Layout"),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Hello Cupertino"),
            ],
          ),
        ),
      )
    );
  }


}