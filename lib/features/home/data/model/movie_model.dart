class MovieModel {
  final int id;
  final String title;
  final String originalTitle;
  final String originalLanguage;
  final String overview;
  final String? posterPath;
  final String? backdropPath;
  final double popularity;
  final String releaseDate;
  final double voteAverage;
  final int voteCount;
  final bool adult;
  final bool video;
  final List<int> genreIds;

  MovieModel({
    required this.id,
    required this.title,
    required this.originalTitle,
    required this.originalLanguage,
    required this.overview,
    this.posterPath,
    this.backdropPath,
    required this.popularity,
    required this.releaseDate,
    required this.voteAverage,
    required this.voteCount,
    required this.adult,
    required this.video,
    required this.genreIds,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      id: json['id'] as int,
      title: json['title'] as String,
      originalTitle: json['original_title'] as String,
      originalLanguage: json['original_language'] as String,
      overview: json['overview'] as String,
      posterPath: json['poster_path'] as String?,
      backdropPath: json['backdrop_path'] as String?,
      popularity: (json['popularity'] as num).toDouble(),
      releaseDate: json['release_date'] as String,
      voteAverage: (json['vote_average'] as num).toDouble(),
      voteCount: json['vote_count'] as int,
      adult: json['adult'] as bool,
      video: json['video'] as bool,
      genreIds: List<int>.from(json['genre_ids'] as List),
    );
  }

  @override
  String toString() {
    return 'MovieModel(id: $id, title: $title, releaseDate: $releaseDate)';
  }
}

