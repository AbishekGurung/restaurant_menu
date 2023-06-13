import 'package:flutter/material.dart';
import 'package:login_app/home_page.dart';

class LoginPage extends StatelessWidget{
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context){
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
         decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 214, 212, 219),
              Color.fromARGB(255, 21, 219, 219),
            ],
          ),
         ),
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Welcome To Login Screen",
              style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 26
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                 filled: true,
                 fillColor: Color.fromARGB(26, 20, 18, 26),
                 hintText:"Email",
                 border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                 ),
                 ),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                 filled: true,
                 fillColor: Colors.white10,
                 hintText:"Password",
                 border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                 ),
                 ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
GestureDetector(
  onTap:(){
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
      builder: (context){
        return Homepage();
      },
    ));
  },
child: Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Container(
  
    width: double.infinity,
  
    height:50,
  
    decoration: BoxDecoration(
  
      borderRadius: BorderRadius.circular(16),
  
      color: Color.fromARGB(255, 13, 32, 83),
  
    ),
  
    child: const Center(
  
      child: Text("Login",
  
      style: TextStyle(
  
        fontWeight: FontWeight.bold,
  
        fontSize: 23,
  
        color: Color.fromARGB(255, 228, 225, 225),
  
      ),
  
      ),
  
    ),
  
  ),
),
)
          ],
         ),
      ),
    );
  }
}