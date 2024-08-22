import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Color.fromARGB(255, 0, 1, 32),
      appBar: AppBar(title: Center(child: Text('Bappa\'s Homepage',style: TextStyle(color: Colors.yellow[700]),)),backgroundColor: Color.fromARGB(255, 0, 2, 51),),
      body: Column(children: [
        Hero(tag: 'bappa',child:Center(child: Padding(
          padding: EdgeInsets.only(left: 10),
          child: Image.asset('assets/Bappa-removebg-preview.png',height: 250,),
        )))
      ],),
    );
  }
}