import 'package:dio/dio.dart';
import 'package:interview_project/user_model.dart';

class FetchDetails {
  Future<List<UserModel>> fetchDetails() async {
    final Dio dio = Dio();
    final result = await dio.get("https://jsonplaceholder.typicode.com/users");
    return (result.data as List<dynamic>).map((e) => UserModel.fromJson(e)).toList();
  
  }
}
