import 'package:ditonton/domain/entities/tv/tv.dart';
import 'package:equatable/equatable.dart';

class TVModel extends Equatable {
  final bool? adult;
  final String? backdropPath;
  final List<int> genreIds;
  final int id;
  final List<String> originCountry;
  final String originalLanguage;
  final String? originalName;
  final String overview;
  final double popularity;
  final String? posterPath;
  final String? name;
  final double voteAverage;
  final int voteCount;

  TVModel({
    required this.adult,
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originCountry,
    required this.originalLanguage,
    required this.originalName,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.name,
    required this.voteAverage,
    required this.voteCount,
  });

  factory TVModel.fromJson(Map<String, dynamic> json) => TVModel(
        adult: json["adult"],
        backdropPath: json["backdrop_path"],
        genreIds: List<int>.from(json["genre_ids"].map((x) => x)),
        id: json["id"],
        originCountry: List<String>.from(json["origin_country"].map((x) => x)),
        originalLanguage: json["original_language"],
        originalName: json["original_name"],
        overview: json["overview"],
        popularity: json["popularity"]?.toDouble(),
        posterPath: json["poster_path"],
        name: json["name"],
        voteAverage: json["vote_average"]?.toDouble(),
        voteCount: json["vote_count"],
      );

  Map<String, dynamic> toJson() => {
        "adult": adult,
        "backdrop_path": backdropPath,
        "genre_ids": List<dynamic>.from(genreIds.map((x) => x)),
        "id": id,
        "origin_country": originCountry,
        "original_language": originalLanguage,
        "original_title": originalName,
        "overview": overview,
        "popularity": popularity,
        "poster_path": posterPath,
        "title": name,
        "vote_average": voteAverage,
        "vote_count": voteCount,
      };

  TV toEntity() {
    return TV(
      adult: this.adult,
      backdropPath: this.backdropPath,
      genreIds: this.genreIds,
      id: this.id,
      originCountry: this.originCountry,
      originalLanguage: this.originalLanguage,
      originalTitle: this.originalName,
      overview: this.overview,
      popularity: this.popularity,
      posterPath: this.posterPath,
      title: this.name,
      voteAverage: this.voteAverage,
      voteCount: this.voteCount,
    );
  }

  @override
  List<Object?> get props => [
        adult,
        backdropPath,
        genreIds,
        id,
        originalLanguage,
        originalName,
        overview,
        popularity,
        posterPath,
        name,
        voteAverage,
        voteCount,
      ];
}
