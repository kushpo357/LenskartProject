import 'package:flutter/material.dart';
import '../models/movie.dart';
import '../state/app_state.dart';

class MovieDetailScreen extends StatefulWidget {
  final Movie movie;

  const MovieDetailScreen({super.key, required this.movie});

  @override
  State<MovieDetailScreen> createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends State<MovieDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final movie = widget.movie;

    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔹 Movie Banner
            Image.asset(
              movie.imageUrl,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 🔹 Title
                  Text(
                    movie.title,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  // 🔹 Meta info
                  Text('Genre: ${movie.genre}'),
                  Text('Release Date: ${movie.releaseDate}'),

                  const SizedBox(height: 16),

                  // 🔹 Description
                  Text(movie.description),

                  const SizedBox(height: 24),

                  // 🔹 Rating (Circular Progress)
                  Center(
                    child: SizedBox(
                      width: 90,
                      height: 90,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CircularProgressIndicator(
                            value: movie.rating / 10,
                            strokeWidth: 6,
                            backgroundColor: Colors.grey.shade300,
                            color: Colors.green,
                          ),
                          Text(
                            movie.rating.toString(),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // 🔹 Favourite & Watchlist Buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton.icon(
                        icon: Icon(
                          AppState.isFavourite(movie)
                              ? Icons.favorite
                              : Icons.favorite_border,
                        ),
                        label: const Text('Favourite'),
                        onPressed: () {
                          setState(() {
                            AppState.toggleFavourite(movie);
                          });

                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                AppState.isFavourite(movie)
                                    ? 'Added to favourites'
                                    : 'Removed from favourites',
                              ),
                            ),
                          );
                        },
                      ),
                      ElevatedButton.icon(
                        icon: Icon(
                          AppState.isInWatchlist(movie)
                              ? Icons.bookmark
                              : Icons.bookmark_border,
                        ),
                        label: const Text('Watchlist'),
                        onPressed: () {
                          setState(() {
                            AppState.toggleWatchlist(movie);
                          });

                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                AppState.isInWatchlist(movie)
                                    ? 'Added to watchlist'
                                    : 'Removed from watchlist',
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),

                  const SizedBox(height: 24),

                  // 🔹 Play Now Button
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Movie is Playing'),
                          ),
                        );
                      },
                      child: const Text('Play Now'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
