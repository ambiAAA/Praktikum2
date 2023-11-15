import 'package:flutter/material.dart';
import 'package:praktikum_mobile_2/pages/input.dart';

class Login2 extends StatelessWidget {
  Login2({super.key});

  final userName = TextEditingController();
  final passWord = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Icon(
                Icons.person,
                size: 125,
              ),
              Input(
                  controller: userName,
                  hintText: 'username',
                  obscureText: false),
              Input(
                  controller: passWord,
                  hintText: 'Password',
                  obscureText: true),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/list');
                },
                child: Text('login'),
                style: ElevatedButton.styleFrom(shape: StadiumBorder()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
