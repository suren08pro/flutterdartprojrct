import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget{
  const Homescreen({super.key});
  @override
  Widget Build(BuildContext context){
    //return Text("Homescreen");
    return Scaffold(
      appBar: AppBar(title: Text('Projext')),
      backgroundColor: Color.fromARGB(22, 23, 43, 43),
    );
  }
}