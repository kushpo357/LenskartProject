import 'package:flutter/material.dart';
import '../state/app_state.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final movies = AppState.favourites;

    if (movies.isEmpty) {
      return const Center(child: Text('No favourites yet'));
    }

    return ListView.builder(
      itemCount: movies.length,
      itemBuilder: (context, index) {
        final movie = movies[index];
        return ListTile(
          leading: Image.asset(movie.imageUrl, width: 50),
          title: Text(movie.title),
          subtitle: Text(movie.genre),
        );
      },
    );
  }
}
