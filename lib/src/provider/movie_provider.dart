import 'package:flutter/foundation.dart';
import 'package:flutter_provider_sample/src/repository/movie_repository.dart';

import '../model/movie.dart';

class MovieProvider extends ChangeNotifier {
  final MovieRepository _movieRepository = MovieRepository();

  List<Movie> _movies = [];
  List<Movie> get movies => _movies;

  loadMovies() async {
    List<Movie> listMovies = await _movieRepository.loadMovies();

    /// 예외처리, 가공 등..

    _movies = listMovies;
    notifyListeners();
  }
}
