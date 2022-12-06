import 'package:flutter/material.dart';
import 'package:tourmate/main.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Home()
));

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome tourist!"),
        backgroundColor: Colors.blueGrey[800],
      ),
            body: InkWell(
              onTap: (){
                print("Let's begin your journey");
              },
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