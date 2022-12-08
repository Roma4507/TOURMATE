import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget{
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset("assets/tour_2.jpeg",fit: BoxFit.cover),
                const SizedBox(height: 10),
                const Text("Welcome tourist!",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w400)),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 13,horizontal: 32),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Enter Username",
                          labelText: "Username"
                        )
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            labelText: "Password",
                            hintText: "Enter Password"
                        )
                      ),
                      const SizedBox(height: 20),
                     ElevatedButton(child: Text("Login"),
                         onPressed: (){},
                       style:TextButton.styleFrom(backgroundColor: Colors.indigo[600])
                     ),
                      const SizedBox(height: 30),
                     const Text("Or signup",style: TextStyle(fontSize: 18,color: Colors.lightGreenAccent),)
                     // ElevatedButton(onPressed: onPressed, child: child)
                    ],
                  ),
                )
              ],
            ),
          ),
    );
  }
}