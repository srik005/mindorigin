import 'dart:convert';

import 'package:http/http.dart';

import 'LoginModel.dart';

class LoginRepository {
  String url = "https://reqres.in/api/login";

  Future<LoginModel> getUsers() async {
    Response response = await get(Uri.parse(url));

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body)['token'];
      return result;
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
