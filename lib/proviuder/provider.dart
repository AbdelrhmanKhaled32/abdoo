import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled4/Model/model.dart';
import 'package:untitled4/Services/services.dart';
class provider_ extends ChangeNotifier
{
  String ?token;
  post_login(String name,String pass)async
  {
    final token_=await ser.login(name: name, pass: pass);
    token=token_.token;
    notifyListeners();
  }
  post_signup(String name,String pass)async
  {
    await ser.signup(name: name, pass: pass);
    notifyListeners();
  }
}