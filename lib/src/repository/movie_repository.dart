import 'dart:convert';

import 'package:flutter_provider_sample/env.dart';
import 'package:http/http.dart' as http;

import '../model/movie.dart';

class MovieRepository {
  final queryParam = {"api_key": Env.tmdbApiKey};

  Future<List<Movie>> loadMovies() async {
    var parse = Uri.https("api.themoviedb.org", "/3/movie/popular", queryParam);
    var response = await http.get(parse, headers: {
      "Content-Type": "application/json",
    });
    Map<String, dynamic> body = jsonDecode(response.body);
    if (body["results"] == null) {
      return [];
    }

    List<dynamic> list = body["results"];
    return list.map<Movie>((item) => Movie.fromJson(item)).toList();
  }
}
