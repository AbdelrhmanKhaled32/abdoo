import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled4/proviuder/provider.dart';
import 'package:untitled4/screen/signup.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => provider_())
      ],
      child: MaterialApp(
        home: SignupScreen()
      ),
    );
  }
}
