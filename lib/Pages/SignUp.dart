import 'package:flutter/material.dart';


class RegistartionScreen extends StatefulWidget{
  @override
  State<RegistartionScreen> createState() => _RegistartionScreenState();
}

class _RegistartionScreenState extends State<RegistartionScreen> {

  final _formkey= GlobalKey<FormState>();

  final nameEditingController= new TextEditingController();
  final emailEditingController= new TextEditingController();
  final passwordEditingController= new TextEditingController();
  final confirmPasswordEditingController= new TextEditingController();

  @override
    Widget build(BuildContext context) {
    final nameField=TextFormField(
        autofocus: false,
        controller: nameEditingController,
        keyboardType: TextInputType.name,

        //validator : () {}
        onSaved: (value)
    {
      nameEditingController.text = value!;
    },
      textInputAction: TextInputAction.next ,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle),
          contentPadding: EdgeInsets.fromLTRB(20, 15,20, 15),
          hintText:"Full Name",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )
      ),
    );
    final emailField=TextFormField(
      autofocus: false,
      controller: emailEditingController,
      //validator : () {}
      onSaved: (value){
        emailEditingController.text=value!;
      },
      textInputAction: TextInputAction.next ,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.mail),
          contentPadding: EdgeInsets.fromLTRB(20, 15,20, 15),
          hintText:"Email",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )
      ),
    );
    final passwordField=TextFormField(
      autofocus: false,
      controller: passwordEditingController,
      obscureText: true,

      //validator : () {}
      onSaved: (value){
        passwordEditingController.text=value!;
      },
      textInputAction: TextInputAction.next ,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15,20, 15),
          hintText:"Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )
      ),
    );
    final confirmPasswordField=TextFormField(
      autofocus: false,
      controller: confirmPasswordEditingController,
      obscureText: true,

      //validator : () {}
      onSaved: (value){
        confirmPasswordEditingController.text=value!;
      },
      textInputAction: TextInputAction.next ,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.mail),
          contentPadding: EdgeInsets.fromLTRB(20, 15,20, 15),
          hintText:"ConfirmPassword",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )
      ),
    );
    final SignUpButton=Material(

      borderRadius: BorderRadius.circular(100),
      elevation: 5,
      color: Colors.green,
      child: Center(
        child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () {},
          child: Text("SignUp",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.green,),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
               child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: _formkey,
                child: Column(

                    // mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/ta.jpg",fit: BoxFit.fitWidth),
                      const SizedBox(height: 10),
                      nameField,
                      SizedBox(height: 20),
                      emailField,
                      SizedBox(height: 20),
                      passwordField,
                      SizedBox(height: 20),
                      confirmPasswordField,
                      SizedBox(height: 20),
                      SignUpButton


                    ]
                ),
              ),
            ),
          ),
        ),
      );

  }
}