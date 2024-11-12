import 'dart:ui';

class model_login
{
  String ?token;
  model_login({required this.token});
  factory model_login.from(Map<String,dynamic>dat)
  {
    return model_login(token: dat["token"]);
  }
}
