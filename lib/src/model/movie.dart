class Movie {
  int id;
  String overview;
  String posterPath;
  String title;

  Movie({
    required this.id,
    required this.overview,
    required this.posterPath,
    required this.title,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id: json["id"] as int,
      overview: json["overview"] as String,
      posterPath: json["poster_path"] as String,
      title: json["title"] as String,
    );
  }

  String get posterUrl => "https://image.tmdb.org/t/p/w500/$posterPath";
}
