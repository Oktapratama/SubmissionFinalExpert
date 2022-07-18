
import 'package:core/data/models/movie_table.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movies/domain/entities/movie.dart';

void main() {
  final tMovieModel = MovieTable(
    id: 1,
    overview: 'overview',
    posterPath: 'posterPath',
    title: 'title',
  );

  final tMovie = Movie.watchlist(

    id: 1,
    overview: 'overview',
    posterPath: 'posterPath',
    title: 'title',
  );

  test('should be a subclass of Movie entity', () async {
    final result = tMovieModel.toEntity();
    expect(result, tMovie);
  });
}
