import 'package:dio/dio.dart';
import 'package:provider/provider.dart';
import 'package:untitled4/Model/model.dart';
class ser
{
  static Dio dio =Dio();
  static Future<model_login>login({required String name,required String pass})async
  {
    final da=await dio.post("https://fakestoreapi.com/auth/login",data: {"password":pass,"username":name});
    if(da.statusCode==200)
      {
        return model_login.from(da.data);
      }
    else
      {
        throw('bad requset');
      }
  }
  static Future<void>signup({required String name,required String pass})async
  {
    await dio.post("https://fakestoreapi.com/users",data: {"password":pass,"username":name});
  }
}