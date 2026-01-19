import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/movie.dart';

class TMDBService {
  static const String _apiKey = '529a8d32f220737ba7d785a9d1985b8a';
  static const String _baseUrl = 'https://api.themoviedb.org/3';
  static const String _imageBaseUrl = 'https://image.tmdb.org/t/p/w500';

  static Future<List<Movie>> fetchPopularMovies() async {
    final url = Uri.parse(
      '$_baseUrl/movie/popular?api_key=$_apiKey',
    );

    final response = await http.get(url);

    if (response.statusCode != 200) {
      throw Exception('Failed to load movies');
    }

    final data = json.decode(response.body);
    final List results = data['results'];

    return results.map((json) {
      return Movie(
        id: json['id'],
        title: json['title'],
        genre: 'Popular', // simplified
        imageUrl: '$_imageBaseUrl${json['poster_path']}',
        description: json['overview'],
        releaseDate: json['release_date'],
        rating: (json['vote_average'] as num).toDouble(),
      );
    }).toList();
  }
}
