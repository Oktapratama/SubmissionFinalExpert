
import 'package:core/data/models/tv/tv_table.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tv_series/domain/entities/tv/tv.dart';

void main() {
  final tMovieModel = TableTv(
    id: 1,
    overview: 'overview',
    posterPath: 'posterPath',
    name: 'title',
  );

  final tMovie = Tv.watchlist(

    id: 1,
    overview: 'overview',
    posterPath: 'posterPath',
    name: 'title',
  );

  test('should be a subclass of Movie entity', () async {
    final result = tMovieModel.toEntity();
    expect(result, tMovie);
  });
}
