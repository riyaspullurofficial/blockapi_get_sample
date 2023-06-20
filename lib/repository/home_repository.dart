import 'package:dio/dio.dart';

class HomeRepository {
  static Future<String> fetchRandomString() async {
    try {
      final response =
          await Dio(BaseOptions()).get('https://www.boredapi.com/api/activity');
      if (response.statusCode == 200 || response.statusCode == 201) {
        return response.data['activity'];
      } else {
        throw Exception();
      }
    } catch (e) {
      throw Exception();
    }
  }
}
