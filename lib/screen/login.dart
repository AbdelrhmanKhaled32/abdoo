import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled4/proviuder/provider.dart';

import '../widget/cos.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<provider_>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextField(
              labelText: 'Username',
              controller: usernameController,
            ),
            SizedBox(height: 16),
            CustomTextField(
              labelText: 'Password',
              controller: passwordController,
              obscureText: true,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                authProvider.post_login(
                  usernameController.text,
                  passwordController.text,
                );
                print("ok");
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
