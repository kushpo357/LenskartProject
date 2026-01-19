import '../models/movie.dart';

class AppState {
  static final List<Movie> favourites = [];
  static final List<Movie> watchlist = [];

  static bool isFavourite(Movie movie) {
    return favourites.any((m) => m.id == movie.id);
  }

  static bool isInWatchlist(Movie movie) {
    return watchlist.any((m) => m.id == movie.id);
  }

  static void toggleFavourite(Movie movie) {
    if (isFavourite(movie)) {
      favourites.removeWhere((m) => m.id == movie.id);
    } else {
      favourites.add(movie);
    }
  }

  static void toggleWatchlist(Movie movie) {
    if (isInWatchlist(movie)) {
      watchlist.removeWhere((m) => m.id == movie.id);
    } else {
      watchlist.add(movie);
    }
  }
}
