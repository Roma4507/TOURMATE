import 'package:flutter/material.dart';
import 'package:tourmate/utils/route.dart';



class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Let's begin your journey"),
        backgroundColor: Colors.blueGrey[800],
      ),
      body: InkWell(
        onTap: (){
          Navigator.pushNamed(context, MyRoutes.loginRoute);
        },
        child: Material(
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
      ),

    );
  }
}