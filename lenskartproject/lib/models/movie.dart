class Movie {
  final int id;
  final String title;
  final String genre;
  final String imageUrl;
  final String description;
  final String releaseDate;
  final double rating; // out of 10

  Movie({
    required this.id,
    required this.title,
    required this.genre,
    required this.imageUrl,
    required this.description,
    required this.releaseDate,
    required this.rating,
  });
}
