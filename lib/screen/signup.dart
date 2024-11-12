import 'package:flutter/material.dart';
import 'package:untitled4/proviuder/provider.dart';
import 'package:provider/provider.dart';
import 'package:untitled4/screen/login.dart';
import '../widget/cos.dart';

class SignupScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<provider_>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Signup'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextField(
              labelText: 'Email',
              controller: emailController,
            ),
            SizedBox(height: 16),
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
                authProvider.post_signup(usernameController.text, passwordController.text);
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child:Text('Signup'),
            ),
          ],
        ),
      ),
    );
  }
}
