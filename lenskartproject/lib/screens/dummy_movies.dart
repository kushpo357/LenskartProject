import '../models/movie.dart';

final List<Movie> dummyMovies = [
  Movie(
    id: 1,
    title: 'Inception',
    genre: 'Sci-Fi',
    imageUrl: 'assets/images/inception.jpg',
    description:
        'A thief who steals corporate secrets through dream-sharing technology.',
    releaseDate: '2010',
    rating: 8.8,
  ),
  Movie(
    id: 2,
    title: 'Interstellar',
    genre: 'Sci-Fi',
    imageUrl: 'assets/images/interstellar.jpg',
    description:
        'A team of explorers travel through a wormhole in space in an attempt to save humanity.',
    releaseDate: '2014',
    rating: 8.6,
  ),
];
