import 'package:flutter/material.dart';



class Homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Let's begin your journey"),
        backgroundColor: Colors.blueGrey[800],
      ),
      body: Material(
        child: Container(
          //width: MediaQuery.of(context).size.width,

          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            //color: Colors.blueGrey,
              image: DecorationImage(image: AssetImage("assets/tour_1.jpeg"),fit: BoxFit.fill)
          ),

        ),
      ),

    );
  }
}