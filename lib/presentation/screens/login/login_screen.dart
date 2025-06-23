import 'dart:developer';

import 'package:bitfolio/presentation/screens/setup/setup_screen.dart';
import 'package:bitfolio/presentation/widgets/common/styled_heading.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var usernameController = TextEditingController();
    var passwordController = TextEditingController();
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            styledHeading(text: 'Login',fontSize: 40),
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                Text(
                  'Dont have an account?Register',
                  style: TextStyle(fontSize: 12),
                ),
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          log("username=${usernameController.text}password=${passwordController.text}");
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=> SetupScreen()));
                        },
                        child: Text('login')))
              ],
            )
          ],
        ),
      )),
    );
  }
}
