import 'package:favoritemovies/core/app_images.dart';

class Films {
  final String title;
  final String kind;
  final int year;
  final String cover_url;
  final String imdb_id;

  Films(
      {required this.title,
      required this.kind,
      required this.year,
      required this.cover_url,
      required this.imdb_id});

  Films.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        kind = json['kind'],
        year = json['year'],
        cover_url = json['cover_url'],
        imdb_id = json['imdb_id'];

  static List<Films> getFilms() {
    return <Films>[
      Films.fromJson({
        "title": "Movie",
        "kind": "movie",
        "year": 2011,
        "cover_url":
            "https://m.media-amazon.com/images/M/MV5BMTk3NzI1NzA4OF5BMl5BanBnXkFtZTgwNjQ2NTA2MDE@.jpg",
        "imdb_id": "1853619"
      }),
      Films.fromJson({
        "title": "Movie",
        "kind": "movie",
        "year": 2007,
        "cover_url": "https://m.media-amazon.png",
        "imdb_id": "1040023"
      }),
      Films.fromJson({
        "title": "Movie",
        "kind": "movie",
        "year": 2014,
        "cover_url":
            "https://m.media-amazon.com/images/M/MV5BMTA2Mjk2OTM3MDleQTJeQWpwZ15BbWU4MDgwNTUyMzgx.jpg",
        "imdb_id": "4010128"
      }),
      Films.fromJson({
        "title": "Movie 43",
        "kind": "movie",
        "year": 2013,
        "cover_url":
            "https://m.media-amazon.com/images/M/MV5BMTg4NzQ3NDM1Nl5BMl5BanBnXkFtZTcwNjEzMjM3OA@@.jpg",
        "imdb_id": "1333125"
      }),
      Films.fromJson({
        "title": "Scary Movie",
        "kind": "movie",
        "year": 2000,
        "cover_url":
            "https://m.media-amazon.com/images/M/MV5BMGEzZjdjMGQtZmYzZC00N2I4LThiY2QtNWY5ZmQ3M2ExZmM4XkEyXkFqcGdeQXVyMTQxNzMzNDI@.jpg",
        "imdb_id": "0175142"
      }),
      Films.fromJson({
        "title": "Jungle Beat: The Movie",
        "kind": "movie",
        "year": 2020,
        "cover_url":
            "https://m.media-amazon.com/images/M/MV5BOTc5OGUxYzktZGZkYy00ODBlLThhYTQtNDExMGE5YTFhNDk2XkEyXkFqcGdeQXVyMTAyNjY3OTM@.jpg",
        "imdb_id": "12139700"
      }),
      Films.fromJson({
        "title": "Bee Movie",
        "kind": "movie",
        "year": 2007,
        "cover_url":
            "https://m.media-amazon.com/images/M/MV5BMjE1MDYxOTA4MF5BMl5BanBnXkFtZTcwMDE0MDUzMw@@.jpg",
        "imdb_id": "0389790"
      }),
      Films.fromJson({
        "title": "Scary Movie 2",
        "kind": "movie",
        "year": 2001,
        "cover_url":
            "https://m.media-amazon.com/images/M/MV5BMzQxYjU1OTUtYjRiOC00NDg2LWI4MWUtZGU5YzdkYTcwNTBlXkEyXkFqcGdeQXVyMTQxNzMzNDI@.jpg",
        "imdb_id": "0257106"
      }),
      Films.fromJson({
        "title": "The Lego Movie",
        "kind": "movie",
        "year": 2014,
        "cover_url":
            "https://m.media-amazon.com/images/M/MV5BMTg4MDk1ODExN15BMl5BanBnXkFtZTgwNzIyNjg3MDE@.jpg",
        "imdb_id": "1490017"
      }),
      Films.fromJson({
        "title": "Epic Movie",
        "kind": "movie",
        "year": 2007,
        "cover_url":
            "https://m.media-amazon.com/images/M/MV5BMTA3NDM5ODU3NzleQTJeQWpwZ15BbWU3MDgyMjgyNDE@.jpg",
        "imdb_id": "0799949"
      }),
      Films.fromJson({
        "title": "Paw Patrol: The Movie",
        "kind": "movie",
        "year": 2021,
        "cover_url":
            "https://m.media-amazon.com/images/M/MV5BNzY2NmQ1ZTgtMGJkOC00YTA0LWE5NjctZjM2ZjFiMWNhYzEzXkEyXkFqcGdeQXVyNjQ4NjY2MzE@.jpg",
        "imdb_id": "11832046"
      }),
      Films.fromJson({
        "title": "Scary Movie 3",
        "kind": "movie",
        "year": 2003,
        "cover_url":
            "https://m.media-amazon.com/images/M/MV5BNDE2NTIyMjg2OF5BMl5BanBnXkFtZTYwNDEyMTg3.jpg",
        "imdb_id": "0306047"
      }),
      Films.fromJson({
        "title": "Not Another Teen Movie",
        "kind": "movie",
        "year": 2001,
        "cover_url":
            "https://m.media-amazon.com/images/M/MV5BNTRhNWJmNTUtM2VhYi00NzdkLTgyYTUtMWMzMWI3MzFmNzk5XkEyXkFqcGdeQXVyNjgzMjI4ODE@.jpg",
        "imdb_id": "0277371"
      }),
      Films.fromJson({
        "title": "Date Movie",
        "kind": "movie",
        "year": 2006,
        "cover_url":
            "https://m.media-amazon.com/images/M/MV5BYjA3NDM3ZGYtMGQ4NS00N2U3LTg3MmYtYzFjODJjYzMxMjIwXkEyXkFqcGdeQXVyNzE2MTQyMzM@.jpg",
        "imdb_id": "0466342"
      }),
      Films.fromJson({
        "title": "The Emoji Movie",
        "kind": "movie",
        "year": 2017,
        "cover_url":
            "https://m.media-amazon.com/images/M/MV5BMTkzMzM3OTM2Ml5BMl5BanBnXkFtZTgwMDM0NDU3MjI@.jpg",
        "imdb_id": "4877122"
      }),
      Films.fromJson({
        "title": "Moviestar*",
        "kind": "movie",
        "year": 2015,
        "cover_url":
            "https://m.media-amazon.com/images/M/MV5BMjE3MTM3MzY3OF5BMl5BanBnXkFtZTgwNTIxMTUxNjE@.jpg",
        "imdb_id": "4067386"
      }),
      Films.fromJson({
        "title": "Movies Money Murder",
        "kind": "movie",
        "year": 1993,
        "cover_url":
            "https://m.media-amazon.com/images/M/MV5BYzJkMjQwM2QtNmZmZS00YWVmLWI4YjQtNTBkMTJhN2I5ZDEwXkEyXkFqcGdeQXVyMTU5MjUxMzQ@.jpg",
        "imdb_id": "0259444"
      })
    ];
  }
}
