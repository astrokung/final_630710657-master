import 'dart:convert';


class WeatherRepository {
  Future<Map<String, dynamic>> getData(String city) async {
    try {
      var result = await ApiCaller().get(city);
      Map<String, dynamic> data = jsonDecode(result);
      return data;
    } catch (e) {
      // TODO:
      rethrow;
    }
  }
}