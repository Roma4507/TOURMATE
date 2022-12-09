//import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tourmate/Pages/Homepage.dart';
import 'package:tourmate/utils/route.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';


class Login extends StatefulWidget{
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //form key
  final _formkey= GlobalKey<FormState>();

  //editing controller
  final TextEditingController emailController=new TextEditingController();
  final TextEditingController passwordController=new TextEditingController();



  //firebase
  final _auth=FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    final emailField=TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,

      validator : (value)
      {
        if(value!.isEmpty){
          return("Please Enter Your Email");
        }

        //reg expression for email validation
        if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)){
          return("Please Enter a valid email");
        }
      },
      onSaved: (value){
        emailController.text=value!;
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
    controller: passwordController,
    obscureText: true,
    validator : (value) {
      RegExp regex=new RegExp(r'^.{6,}$');
      if(value!.isEmpty){
        return("Password is required for login");
      }
      if(!regex.hasMatch(value)){
        return("Enter Valid Password(Min. 6 Character)");
      }
    },
    onSaved: (value){
    passwordController.text=value!;
    },
    textInputAction: TextInputAction.done ,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15,20, 15),
          hintText:"Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )
      ),
    );
    final loginButton=Material(

        borderRadius: BorderRadius.circular(120),
      elevation: 5,
      color: Colors.lightBlue,
      child: Center(
        child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width,

            onPressed: () {
              signIn(emailController.text, passwordController.text);
            // Navigator.pushNamed(context, MyRoutes.homeRoute);
            },
                child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),

        ),
      ),
    );
    return Scaffold(
      body: Center(
            child: SingleChildScrollView(
              child: Container(

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        Image.asset("assets/tour_2.jpeg",fit: BoxFit.contain),
                        const SizedBox(height: 10),
                        const Text("Welcome tourist!",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w400)),
                        SizedBox(height: 10),
                        emailField,
                        SizedBox(height: 20),
                        passwordField,
                        SizedBox(height: 20),
                        loginButton,
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account?",style: TextStyle(color: Colors.amber[100]),),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context,MyRoutes.signUp);
                              },
                              child: Text("SignUp",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.amberAccent),),
                            )
                          ],
                        )

                      ]
                    ),
                  ),
                ),
              ),
              ),
          ),
          );


  }
  //logon function
  void signIn(String email,String password) async{
    if(_formkey.currentState!.validate()){
      await _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((uid) =>
      {
        Fluttertoast.showToast(msg: "Login Successful"),
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomePage()))
      }).catchError((e)
      {
        Fluttertoast.showToast(msg: e!.message);
      });
    }
  }
}