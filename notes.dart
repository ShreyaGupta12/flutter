import 'package:flutter/material.dart';
//import 'package:flutter_app11/lib/notes/note1.dart';

void main() => runApp(MaterialApp(home:MyApp()));
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Flutter App',
      home: Scaffold(
          appBar:AppBar(title: Text('Create :)'), backgroundColor: Colors.yellow,),
        body:Material(
        color:Colors.yellow[100],
        child:Center(
        child:Text(
           "::Create notes::",
          textDirection: TextDirection.ltr,
        style: TextStyle(fontSize: 35.0),),
      ),
      ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.yellow,
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => note()),
            );
          },
        ),),
    );
  }
}
class note extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Flutter App',
      home: Scaffold(
        appBar:AppBar(title: Text('New Note'), backgroundColor: Colors.orangeAccent,
        ),
        body:Material(
          color:Colors.orange[100],

        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.orangeAccent,
          child: Icon(Icons.transit_enterexit),
          onPressed: () {
            Navigator.pop(context);
          },
      ),
    ),
    );
  }
}
