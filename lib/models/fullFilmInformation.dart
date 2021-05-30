class FullFilmInformation {
  final String title;
  final String kind;
  final int year;
  final String cover_url;
  final String imdb_id;
  final double rating;
  final List<dynamic> genres;
  final List<dynamic> directors;
  final String synopsis;
  FullFilmInformation(this.title, this.kind, this.year, this.cover_url,
      this.rating, this.genres, this.directors, this.synopsis, this.imdb_id);

  FullFilmInformation.fromJson(Map<String, dynamic> json)
      : title = json['title'] != null ? json['title'] : '',
        kind = json['kind'] != null ? json['kind'] : '',
        year = json['year'] != null ? json['year'] : 0,
        cover_url = json['cover_url'] != null ? json['cover_url'] : '',
        imdb_id = json['imdb_id'] != null ? json['imdb_id'] : '',
        rating = json['rating'] != null ? json['rating'] : 0.0,
        genres = json['genres'] != null ? json['genres'] : [''],
        directors = json['directors'] != null ? json['directors'] : [''],
        synopsis = json['synopsis'] != null ? json['synopsis'] : '';
}
