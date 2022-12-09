import 'package:flutter/material.dart';
import 'package:tourmate/utils/route.dart';


class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back,color: Colors.amberAccent,),
            onPressed: (){
              Navigator.of(context).pop(MyRoutes.loginRoute);
            },
          ),
        ),
        body: Center(
          child: Container(
            height: 20,
            width: 20,
            color: Colors.amberAccent,
          ),
        )
    );
  }
}