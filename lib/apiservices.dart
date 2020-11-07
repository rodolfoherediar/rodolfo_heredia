import 'dart:convert';
import 'package:rodolfo_heredia/suerte.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:http/http.dart' as http;

class ApiServices {
  final String url = "https://allugofrases.herokuapp.com/frases/random";

  //GET
  Future<List<Suerte>> getSuertes() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();


    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((job) => new Suerte.fromJson(job)).toList();
    } else
      throw Exception('Failed to load students from API');
  }

  //GET BY ID
  Future<Suerte> getSuerte(int id) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();


    final response = await http.get(
      '$url/$id',
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',

      },
    );
    if (response.statusCode == 200)
      return Suerte.fromJson(json.decode(response.body));
    else
      throw Exception('Failed to load student from API');
  }
}