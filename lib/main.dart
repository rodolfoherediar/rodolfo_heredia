import 'package:flutter/material.dart';
import 'package:rodolfo_heredia/apiservices.dart';

 void main () => runApp(parcial());

 class parcial extends StatelessWidget {
   const parcial({Key key}) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       title: "MAGIC - RODOLFO",
       home: Inicio(),
       theme: ThemeData(
         primarySwatch: Colors.lime,
       ),
     );
   }
 }

 class Inicio extends StatefulWidget {
   Inicio({Key key}) : super(key: key);
 
   @override
   _InicioState createState() => _InicioState();
 }
 
 class _InicioState extends State<Inicio> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(
          title: Text("MAGIC - RODOLFO"),
        ),
        body: Container(
          child: Image.network("https://cdn2.vectorstock.com/i/1000x1000/50/01/magic-ball-with-answer-vector-2495001.jpg"),
        ),
              floatingActionButton: FloatingActionButton.extended(
        label: Text(
          "Suerte",
        ),
        icon: Icon(
          Icons.add,
          color: Color(0xFFFFFBE6),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ApiServices()),
          );
        },
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
      ),
     );
   }
 }