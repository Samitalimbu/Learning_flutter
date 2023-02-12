class Movie {
  final String backdrop_path;
  final int id;
  final String title;
  final String overview;
  final String poster_path;
  final String release_data;
  final String vote_average;

  Movie({
    required this.id,
    required this.backdrop_path,
    required this.title,
    required this.overview,
    required this.poster_path,
    required this.release_data,
    required this.vote_average,
  });

  factory Movie.fromJson(Map<String, dynamic>json){
    return Movie(
        id: json['id'] ?? '',
        backdrop_path: json['backdrop_path'] ?? '',
        title: json['title'] ?? '',
        overview: json['overview'] ?? '',
        poster_path: json['poster_path'] ?? '',
        release_data: json['release_data'] ?? '',
        vote_average: '${json['vote_average']})'

    );
  }
}
