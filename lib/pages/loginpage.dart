import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:main_app/myroutes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/login_image.png"),
            Text(
              "Welcome $name",
              style: TextStyle(
                color: Color.fromARGB(255, 14, 233, 233),
                fontSize: 35,
                fontWeight: FontWeight.bold
              ),
            ),
            Padding(
              child: Column(children: [
                TextFormField(
                decoration: const InputDecoration(
                  hintText: "Enter Username",
                  labelText: "UserName"
                ),
                onChanged: (value){
                  name=value;
                  setState(() {
                    
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Enter Password",
                  labelText: "Password"
                ),
                obscureText: true,
              )
              ],),
              padding: EdgeInsets.all(20),
            ),
            ElevatedButton(
              onPressed: ()=>Navigator.pushNamed(context, MyRoutes.homePage),
              child: const Text("Login")
              )
          ],
        ),
      ),
    );
  }
}