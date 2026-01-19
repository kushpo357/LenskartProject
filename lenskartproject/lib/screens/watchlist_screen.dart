import 'package:flutter/material.dart';
import '../state/app_state.dart';

class WatchlistScreen extends StatelessWidget {
  const WatchlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final movies = AppState.watchlist;

    if (movies.isEmpty) {
      return const Center(child: Text('Watchlist is empty'));
    }

    return ListView.builder(
      itemCount: movies.length,
      itemBuilder: (context, index) {
        final movie = movies[index];
        return ListTile(
          leading: Image.network(movie.imageUrl, width: 50, fit: BoxFit.cover),
          title: Text(movie.title),
          subtitle: Text(movie.genre),
        );
      },
    );
  }
}
