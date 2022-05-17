import 'dart:convert';

class ProductModel {
  int? id;
  String? title;
  String? releaseDate;
  String? boxOffice;
  int? duration;
  String? overview;
  String? coverUrl;
  String? trailerUrl;
  String? directedBy;
  int? phase;
  String? saga;
  int? chronology;
  int? postCreditScenes;
  String? imdbId;
  ProductModel({
    this.id,
    this.title,
    this.releaseDate,
    this.boxOffice,
    this.duration,
    this.overview,
    this.coverUrl,
    this.trailerUrl,
    this.directedBy,
    this.phase,
    this.saga,
    this.chronology,
    this.postCreditScenes,
    this.imdbId,
  });

  ProductModel copyWith({
    int? id,
    String? title,
    String? releaseDate,
    String? boxOffice,
    int? duration,
    String? overview,
    String? coverUrl,
    String? trailerUrl,
    String? directedBy,
    int? phase,
    String? saga,
    int? chronology,
    int? postCreditScenes,
    String? imdbId,
  }) {
    return ProductModel(
      id: id ?? this.id,
      title: title ?? this.title,
      releaseDate: releaseDate ?? this.releaseDate,
      boxOffice: boxOffice ?? this.boxOffice,
      duration: duration ?? this.duration,
      overview: overview ?? this.overview,
      coverUrl: coverUrl ?? this.coverUrl,
      trailerUrl: trailerUrl ?? this.trailerUrl,
      directedBy: directedBy ?? this.directedBy,
      phase: phase ?? this.phase,
      saga: saga ?? this.saga,
      chronology: chronology ?? this.chronology,
      postCreditScenes: postCreditScenes ?? this.postCreditScenes,
      imdbId: imdbId ?? this.imdbId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'releaseDate': releaseDate,
      'boxOffice': boxOffice,
      'duration': duration,
      'overview': overview,
      'coverUrl': coverUrl,
      'trailerUrl': trailerUrl,
      'directedBy': directedBy,
      'phase': phase,
      'saga': saga,
      'chronology': chronology,
      'postCreditScenes': postCreditScenes,
      'imdbId': imdbId,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id']?.toInt(),
      title: map['title'],
      releaseDate: map['releaseDate'],
      boxOffice: map['boxOffice'],
      duration: map['duration']?.toInt(),
      overview: map['overview'],
      coverUrl: map['coverUrl'],
      trailerUrl: map['trailerUrl'],
      directedBy: map['directedBy'],
      phase: map['phase']?.toInt(),
      saga: map['saga'],
      chronology: map['chronology']?.toInt(),
      postCreditScenes: map['postCreditScenes']?.toInt(),
      imdbId: map['imdbId'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) => ProductModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProductModel(id: $id, title: $title, releaseDate: $releaseDate, boxOffice: $boxOffice, duration: $duration, overview: $overview, coverUrl: $coverUrl, trailerUrl: $trailerUrl, directedBy: $directedBy, phase: $phase, saga: $saga, chronology: $chronology, postCreditScenes: $postCreditScenes, imdbId: $imdbId)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ProductModel &&
      other.id == id &&
      other.title == title &&
      other.releaseDate == releaseDate &&
      other.boxOffice == boxOffice &&
      other.duration == duration &&
      other.overview == overview &&
      other.coverUrl == coverUrl &&
      other.trailerUrl == trailerUrl &&
      other.directedBy == directedBy &&
      other.phase == phase &&
      other.saga == saga &&
      other.chronology == chronology &&
      other.postCreditScenes == postCreditScenes &&
      other.imdbId == imdbId;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      title.hashCode ^
      releaseDate.hashCode ^
      boxOffice.hashCode ^
      duration.hashCode ^
      overview.hashCode ^
      coverUrl.hashCode ^
      trailerUrl.hashCode ^
      directedBy.hashCode ^
      phase.hashCode ^
      saga.hashCode ^
      chronology.hashCode ^
      postCreditScenes.hashCode ^
      imdbId.hashCode;
  }
}

  