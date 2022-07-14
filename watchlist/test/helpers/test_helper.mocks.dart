import 'dart:async' as _i8;
import 'dart:convert' as _i25;
import 'dart:typed_data' as _i26;
import 'package:core/data/datasources/db/database_helper.dart' as _i23;
import 'package:core/data/datasources/db/database_helper_tv.dart' as _i24;
import 'package:core/data/datasources/movie_local_data_source.dart' as _i19;
import 'package:core/data/datasources/movie_remote_data_source.dart' as _i15;
import 'package:core/data/datasources/tv_local_data_resource.dart' as _i21;
import 'package:core/data/datasources/tv_remote_data_resource.dart' as _i17;
import 'package:core/data/models/movie_detail_model.dart' as _i3;
import 'package:core/data/models/movie_model.dart' as _i16;
import 'package:core/data/models/movie_table.dart' as _i20;
import 'package:core/data/models/tv/tv_detail_model.dart' as _i4;
import 'package:core/data/models/tv/tv_model.dart' as _i18;
import 'package:core/data/models/tv/tv_table.dart' as _i22;
import 'package:movies/domain/entities/movie.dart' as _i10;
import 'package:movies/domain/entities/movie_detail.dart' as _i11;
import 'package:tv_series/domain/entities/tv/tv_detail.dart' as _i14;
import 'package:tv_series/domain/entities/tv/tv.dart' as _i13;
import 'package:movies/domain/repositories/movie_repository.dart' as _i7;
import 'package:tv_series/domain/repositories/tv_repository.dart' as _i12;
import 'package:core/utils/failure.dart' as _i9;
import 'package:dartz/dartz.dart' as _i2;
import 'package:http/http.dart' as _i5;
import 'package:http/io_client.dart' as _i6;
import 'package:mockito/mockito.dart' as _i1;
import 'package:sqflite_sqlcipher/sqflite.dart' as _i24;

class _FakeEither_0<L, R> extends _i1.Fake implements _i2.Either<L, R> {}

class _FakeMovieDetailResponse_1 extends _i1.Fake
    implements _i3.MovieDetailResponse {}

class _FakeTvSeriesDetailResponse_2 extends _i1.Fake
    implements _i4.ModelDetailTv {}

class _FakeResponse_3 extends _i1.Fake implements _i5.Response {}

class _FakeStreamedResponse_4 extends _i1.Fake implements _i5.StreamedResponse {
}

class _FakeIOStreamedResponse_5 extends _i1.Fake
    implements _i6.IOStreamedResponse {}

/// A class which mocks [MovieRepository].
class MockMovieRepository extends _i1.Mock implements _i7.MovieRepository {
  MockMovieRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<_i2.Either<_i9.Failure, List<_i10.Movie>>> getNowPlayingMovies() =>
      (super.noSuchMethod(Invocation.method(#getNowPlayingMovies, []),
          returnValue: Future<_i2.Either<_i9.Failure, List<_i10.Movie>>>.value(
              _FakeEither_0<_i9.Failure, List<_i10.Movie>>())) as _i8
          .Future<_i2.Either<_i9.Failure, List<_i10.Movie>>>);
  @override
  _i8.Future<_i2.Either<_i9.Failure, List<_i10.Movie>>> getPopularMovies() =>
      (super.noSuchMethod(Invocation.method(#getPopularMovies, []),
          returnValue: Future<_i2.Either<_i9.Failure, List<_i10.Movie>>>.value(
              _FakeEither_0<_i9.Failure, List<_i10.Movie>>())) as _i8
          .Future<_i2.Either<_i9.Failure, List<_i10.Movie>>>);
  @override
  _i8.Future<_i2.Either<_i9.Failure, List<_i10.Movie>>> getTopRatedMovies() =>
      (super.noSuchMethod(Invocation.method(#getTopRatedMovies, []),
          returnValue: Future<_i2.Either<_i9.Failure, List<_i10.Movie>>>.value(
              _FakeEither_0<_i9.Failure, List<_i10.Movie>>())) as _i8
          .Future<_i2.Either<_i9.Failure, List<_i10.Movie>>>);
  @override
  _i8.Future<_i2.Either<_i9.Failure, _i11.MovieDetail>> getMovieDetail(
      int? id) =>
      (super.noSuchMethod(Invocation.method(#getMovieDetail, [id]),
          returnValue: Future<_i2.Either<_i9.Failure, _i11.MovieDetail>>.value(
              _FakeEither_0<_i9.Failure, _i11.MovieDetail>())) as _i8
          .Future<_i2.Either<_i9.Failure, _i11.MovieDetail>>);
  @override
  _i8.Future<_i2.Either<_i9.Failure, List<_i10.Movie>>> getMovieRecommendations(
      int? id) =>
      (super.noSuchMethod(Invocation.method(#getMovieRecommendations, [id]),
          returnValue: Future<_i2.Either<_i9.Failure, List<_i10.Movie>>>.value(
              _FakeEither_0<_i9.Failure, List<_i10.Movie>>())) as _i8
          .Future<_i2.Either<_i9.Failure, List<_i10.Movie>>>);
  @override
  _i8.Future<_i2.Either<_i9.Failure, List<_i10.Movie>>> searchMovies(
      String? query) =>
      (super.noSuchMethod(Invocation.method(#searchMovies, [query]),
          returnValue: Future<_i2.Either<_i9.Failure, List<_i10.Movie>>>.value(
              _FakeEither_0<_i9.Failure, List<_i10.Movie>>())) as _i8
          .Future<_i2.Either<_i9.Failure, List<_i10.Movie>>>);
  @override
  _i8.Future<_i2.Either<_i9.Failure, String>> saveWatchlist(
      _i11.MovieDetail? movie) =>
      (super.noSuchMethod(Invocation.method(#saveWatchlist, [movie]),
          returnValue: Future<_i2.Either<_i9.Failure, String>>.value(
              _FakeEither_0<_i9.Failure, String>()))
      as _i8.Future<_i2.Either<_i9.Failure, String>>);
  @override
  _i8.Future<_i2.Either<_i9.Failure, String>> removeWatchlist(
      _i11.MovieDetail? movie) =>
      (super.noSuchMethod(Invocation.method(#removeWatchlist, [movie]),
          returnValue: Future<_i2.Either<_i9.Failure, String>>.value(
              _FakeEither_0<_i9.Failure, String>()))
      as _i8.Future<_i2.Either<_i9.Failure, String>>);
  @override
  _i8.Future<bool> isAddedToWatchlist(int? id) =>
      (super.noSuchMethod(Invocation.method(#isAddedToWatchlist, [id]),
          returnValue: Future<bool>.value(false)) as _i8.Future<bool>);
  @override
  _i8.Future<_i2.Either<_i9.Failure, List<_i10.Movie>>> getWatchlistMovies() =>
      (super.noSuchMethod(Invocation.method(#getWatchlistMovies, []),
          returnValue: Future<_i2.Either<_i9.Failure, List<_i10.Movie>>>.value(
              _FakeEither_0<_i9.Failure, List<_i10.Movie>>())) as _i8
          .Future<_i2.Either<_i9.Failure, List<_i10.Movie>>>);
}

/// A class which mocks [TvRepository].
class MockTvRepository extends _i1.Mock
    implements _i12.TvRepository {
  MockTvRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<_i2.Either<_i9.Failure, List<_i13.Tv>>>
  getNowPlayingTv() => (super.noSuchMethod(
      Invocation.method(#getOnTheAirTvSeries, []),
      returnValue:
      Future<_i2.Either<_i9.Failure, List<_i13.Tv>>>.value(
          _FakeEither_0<_i9.Failure, List<_i13.Tv>>()))
  as _i8.Future<_i2.Either<_i9.Failure, List<_i13.Tv>>>);
  @override
  _i8.Future<_i2.Either<_i9.Failure, List<_i13.Tv>>>
  getPopularTv() => (super.noSuchMethod(
      Invocation.method(#getPopularTvSeries, []),
      returnValue:
      Future<_i2.Either<_i9.Failure, List<_i13.Tv>>>.value(
          _FakeEither_0<_i9.Failure, List<_i13.Tv>>()))
  as _i8.Future<_i2.Either<_i9.Failure, List<_i13.Tv>>>);
  @override
  _i8.Future<_i2.Either<_i9.Failure, List<_i13.Tv>>>
  getTopRatedTv() => (super.noSuchMethod(
      Invocation.method(#getTopRatedTvSeries, []),
      returnValue:
      Future<_i2.Either<_i9.Failure, List<_i13.Tv>>>.value(
          _FakeEither_0<_i9.Failure, List<_i13.Tv>>()))
  as _i8.Future<_i2.Either<_i9.Failure, List<_i13.Tv>>>);
  @override
  _i8.Future<_i2.Either<_i9.Failure, _i14.DetailTv>> getTvDetail(
      int? id) =>
      (super.noSuchMethod(Invocation.method(#getTvSeriesDetail, [id]),
          returnValue:
          Future<_i2.Either<_i9.Failure, _i14.DetailTv>>.value(
              _FakeEither_0<_i9.Failure, _i14.DetailTv>()))
      as _i8.Future<_i2.Either<_i9.Failure, _i14.DetailTv>>);
  @override
  _i8.Future<_i2.Either<_i9.Failure, List<_i13.Tv>>>
  getTvRecommendations(int? id) => (super.noSuchMethod(
      Invocation.method(#getTvSeriesRecommendations, [id]),
      returnValue:
      Future<_i2.Either<_i9.Failure, List<_i13.Tv>>>.value(
          _FakeEither_0<_i9.Failure, List<_i13.Tv>>()))
  as _i8.Future<_i2.Either<_i9.Failure, List<_i13.Tv>>>);
  @override
  _i8.Future<_i2.Either<_i9.Failure, List<_i13.Tv>>> searchTv(
      String? query) =>
      (super.noSuchMethod(Invocation.method(#searchTvSeries, [query]),
          returnValue:
          Future<_i2.Either<_i9.Failure, List<_i13.Tv>>>.value(
              _FakeEither_0<_i9.Failure, List<_i13.Tv>>()))
      as _i8.Future<_i2.Either<_i9.Failure, List<_i13.Tv>>>);
  @override
  _i8.Future<_i2.Either<_i9.Failure, String>> saveWatchlist(
      _i14.DetailTv? tvSeriesDetail) =>
      (super.noSuchMethod(Invocation.method(#saveWatchlist, [tvSeriesDetail]),
          returnValue: Future<_i2.Either<_i9.Failure, String>>.value(
              _FakeEither_0<_i9.Failure, String>()))
      as _i8.Future<_i2.Either<_i9.Failure, String>>);
  @override
  _i8.Future<_i2.Either<_i9.Failure, String>> removeWatchlist(
      _i14.DetailTv? tvseries) =>
      (super.noSuchMethod(Invocation.method(#removeWatchlist, [tvseries]),
          returnValue: Future<_i2.Either<_i9.Failure, String>>.value(
              _FakeEither_0<_i9.Failure, String>()))
      as _i8.Future<_i2.Either<_i9.Failure, String>>);
  @override
  _i8.Future<bool> isAddedToWatchlist(int? id) =>
      (super.noSuchMethod(Invocation.method(#isAddedToWatchlist, [id]),
          returnValue: Future<bool>.value(false)) as _i8.Future<bool>);
  @override
  _i8.Future<_i2.Either<_i9.Failure, List<_i13.Tv>>>
  getWatchlistTv() => (super.noSuchMethod(
      Invocation.method(#getWatchlistTvSeries, []),
      returnValue:
      Future<_i2.Either<_i9.Failure, List<_i13.Tv>>>.value(
          _FakeEither_0<_i9.Failure, List<_i13.Tv>>()))
  as _i8.Future<_i2.Either<_i9.Failure, List<_i13.Tv>>>);
}

/// A class which mocks [MovieRemoteDataSource].
class MockMovieRemoteDataSource extends _i1.Mock
    implements _i15.MovieRemoteDataSource {
  MockMovieRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<List<_i16.MovieModel>> getNowPlayingMovies() =>
      (super.noSuchMethod(Invocation.method(#getNowPlayingMovies, []),
          returnValue:
          Future<List<_i16.MovieModel>>.value(<_i16.MovieModel>[]))
      as _i8.Future<List<_i16.MovieModel>>);
  @override
  _i8.Future<List<_i16.MovieModel>> getPopularMovies() => (super.noSuchMethod(
      Invocation.method(#getPopularMovies, []),
      returnValue: Future<List<_i16.MovieModel>>.value(<_i16.MovieModel>[]))
  as _i8.Future<List<_i16.MovieModel>>);
  @override
  _i8.Future<List<_i16.MovieModel>> getTopRatedMovies() => (super.noSuchMethod(
      Invocation.method(#getTopRatedMovies, []),
      returnValue: Future<List<_i16.MovieModel>>.value(<_i16.MovieModel>[]))
  as _i8.Future<List<_i16.MovieModel>>);
  @override
  _i8.Future<_i3.MovieDetailResponse> getMovieDetail(int? id) =>
      (super.noSuchMethod(Invocation.method(#getMovieDetail, [id]),
          returnValue: Future<_i3.MovieDetailResponse>.value(
              _FakeMovieDetailResponse_1()))
      as _i8.Future<_i3.MovieDetailResponse>);
  @override
  _i8.Future<List<_i16.MovieModel>> getMovieRecommendations(int? id) =>
      (super.noSuchMethod(Invocation.method(#getMovieRecommendations, [id]),
          returnValue:
          Future<List<_i16.MovieModel>>.value(<_i16.MovieModel>[]))
      as _i8.Future<List<_i16.MovieModel>>);
  @override
  _i8.Future<List<_i16.MovieModel>> searchMovies(String? query) =>
      (super.noSuchMethod(Invocation.method(#searchMovies, [query]),
          returnValue:
          Future<List<_i16.MovieModel>>.value(<_i16.MovieModel>[]))
      as _i8.Future<List<_i16.MovieModel>>);
}

/// A class which mocks [TvSeriesRemoteDataSource].
class MockTvSeriesRemoteDataSource extends _i1.Mock
    implements _i17.TvRemoteDataSource {
  MockTvSeriesRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<List<_i18.ModelTv>> getNowPlayingTv() =>
      (super.noSuchMethod(Invocation.method(#getOnTheAirTvSeries, []),
          returnValue: Future<List<_i18.ModelTv>>.value(
              <_i18.ModelTv>[])) as _i8.Future<List<_i18.ModelTv>>);
  @override
  _i8.Future<List<_i18.ModelTv>> getPopularTv() =>
      (super.noSuchMethod(Invocation.method(#getPopularTvSeries, []),
          returnValue: Future<List<_i18.ModelTv>>.value(
              <_i18.ModelTv>[])) as _i8.Future<List<_i18.ModelTv>>);
  @override
  _i8.Future<List<_i18.ModelTv>> getTopRatedTv() =>
      (super.noSuchMethod(Invocation.method(#getTopRatedTvSeries, []),
          returnValue: Future<List<_i18.ModelTv>>.value(
              <_i18.ModelTv>[])) as _i8.Future<List<_i18.ModelTv>>);
  @override
  _i8.Future<_i4.ModelDetailTv> getTvDetail(int? id) =>
      (super.noSuchMethod(Invocation.method(#getTvSeriesDetail, [id]),
          returnValue: Future<_i4.ModelDetailTv>.value(
              _FakeTvSeriesDetailResponse_2()))
      as _i8.Future<_i4.ModelDetailTv>);
  @override
  _i8.Future<List<_i18.ModelTv>> getTvRecommendations(int? id) =>
      (super.noSuchMethod(Invocation.method(#getTvSeriesRecommendations, [id]),
          returnValue: Future<List<_i18.ModelTv>>.value(
              <_i18.ModelTv>[])) as _i8.Future<List<_i18.ModelTv>>);
  @override
  _i8.Future<List<_i18.ModelTv>> searchTv(String? query) =>
      (super.noSuchMethod(Invocation.method(#searchTvSeries, [query]),
          returnValue: Future<List<_i18.ModelTv>>.value(
              <_i18.ModelTv>[])) as _i8.Future<List<_i18.ModelTv>>);
}

/// A class which mocks [MovieLocalDataSource].
class MockMovieLocalDataSource extends _i1.Mock
    implements _i19.MovieLocalDataSource {
  MockMovieLocalDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<String> insertWatchlist(_i20.MovieTable? movie) =>
      (super.noSuchMethod(Invocation.method(#insertWatchlist, [movie]),
          returnValue: Future<String>.value('')) as _i8.Future<String>);

  @override
  _i8.Future<String> removeWatchlist(_i20.MovieTable? movie) =>
      (super.noSuchMethod(Invocation.method(#removeWatchlist, [movie]),
          returnValue: Future<String>.value('')) as _i8.Future<String>);

  @override
  _i8.Future<_i20.MovieTable?> getMovieById(int? id) =>
      (super.noSuchMethod(Invocation.method(#getMovieById, [id]),
          returnValue: Future<_i20.MovieTable?>.value())
      as _i8.Future<_i20.MovieTable?>);

  @override
  _i8.Future<List<_i20.MovieTable>> getWatchlistMovies() => (super.noSuchMethod(
      Invocation.method(#getWatchlistMovies, []),
      returnValue: Future<List<_i20.MovieTable>>.value(<_i20.MovieTable>[]))
  as _i8.Future<List<_i20.MovieTable>>);

  @override
  _i8.Future<void> cacheNowPlayingMovies(List<_i20.MovieTable>? movies) =>
      (super.noSuchMethod(Invocation.method(#cacheNowPlayingMovies, [movies]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i8.Future<void>);

  @override
  _i8.Future<List<_i20.MovieTable>> getCachedNowPlayingMovies() =>
      (super.noSuchMethod(Invocation.method(#getCachedNowPlayingMovies, []),
          returnValue:
          Future<List<_i20.MovieTable>>.value(<_i20.MovieTable>[]))
      as _i8.Future<List<_i20.MovieTable>>);

  @override
  _i8.Future<String> insertWatchlistTv(_i22.TableTv? tvShow) =>
      (super.noSuchMethod(Invocation.method(#insertWatchlistTvShow, [tvShow]),
          returnValue: Future<String>.value('')) as _i8.Future<String>);

  @override
  _i8.Future<String> removeWatchlistTvShow(_i22.TableTv? tvShow) =>
      (super.noSuchMethod(Invocation.method(#removeWatchlistTvShow, [tvShow]),
          returnValue: Future<String>.value('')) as _i8.Future<String>);

  @override
  _i8.Future<_i22.TableTv?> getTvShowById(int? id) =>
      (super.noSuchMethod(Invocation.method(#getTvShowById, [id]),
          returnValue: Future<_i22.TableTv?>.value())
      as _i8.Future<_i22.TableTv?>);

  @override
  _i8.Future<List<_i22.TableTv>> getWatchlistTvShows() =>
      (super.noSuchMethod(Invocation.method(#getWatchlistTvShows, []),
          returnValue:
          Future<List<_i22.TableTv>>.value(<_i22.TableTv>[]))
      as _i8.Future<List<_i22.TableTv>>);
}

/// A class which mocks [TvSeriesLocalDataSource].
class MockTvSeriesLocalDataSource extends _i1.Mock
    implements _i21.TvLocalDataSource {
  MockTvSeriesLocalDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<String> insertWatchlistTv(_i22.TableTv? tvSeries) =>
      (super.noSuchMethod(Invocation.method(#insertWatchlist, [tvSeries]),
          returnValue: Future<String>.value('')) as _i8.Future<String>);
  @override
  _i8.Future<String> removeWatchlistTv(_i22.TableTv? tvSeries) =>
      (super.noSuchMethod(Invocation.method(#removeWatchlist, [tvSeries]),
          returnValue: Future<String>.value('')) as _i8.Future<String>);
  @override
  _i8.Future<_i22.TableTv?> getTvById(int? id) =>
      (super.noSuchMethod(Invocation.method(#getTvSeriesById, [id]),
          returnValue: Future<_i22.TableTv?>.value())
      as _i8.Future<_i22.TableTv?>);
  @override
  _i8.Future<List<_i22.TableTv>> getWatchlistTv() =>
      (super.noSuchMethod(Invocation.method(#getWatchlistTvSeries, []),
          returnValue: Future<List<_i22.TableTv>>.value(
              <_i22.TableTv>[])) as _i8.Future<List<_i22.TableTv>>);
}

/// A class which mocks [DatabaseHelper].
class MockDatabaseHelper extends _i1.Mock implements _i23.DatabaseHelper {
  MockDatabaseHelper() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<_i24.Database?> get database =>
      (super.noSuchMethod(Invocation.getter(#database),
          returnValue: Future<_i24.Database?>.value())
      as _i8.Future<_i24.Database?>);
  @override
  _i8.Future<int> insertMovieWatchlist(_i20.MovieTable? movie) =>
      (super.noSuchMethod(Invocation.method(#insertMovieWatchlist, [movie]),
          returnValue: Future<int>.value(0)) as _i8.Future<int>);
  @override
  _i8.Future<int> insertWatchlistTv(_i22.TableTv? tv) =>
      (super.noSuchMethod(
          Invocation.method(#insertTvSeriesWatchlist, [tv]),
          returnValue: Future<int>.value(0)) as _i8.Future<int>);
  @override
  _i8.Future<int> removeMovieWatchlist(_i20.MovieTable? movie) =>
      (super.noSuchMethod(Invocation.method(#removeMovieWatchlist, [movie]),
          returnValue: Future<int>.value(0)) as _i8.Future<int>);
  @override
  _i8.Future<int> removeWatchlistTv(_i22.TableTv? tv) =>
      (super.noSuchMethod(
          Invocation.method(#removeTvSeriesWatchlist, [tv]),
          returnValue: Future<int>.value(0)) as _i8.Future<int>);
  @override
  _i8.Future<Map<String, dynamic>?> getMovieById(int? id) =>
      (super.noSuchMethod(Invocation.method(#getMovieById, [id]),
          returnValue: Future<Map<String, dynamic>?>.value())
      as _i8.Future<Map<String, dynamic>?>);
  @override
  _i8.Future<Map<String, dynamic>?> getTvById(int? id) =>
      (super.noSuchMethod(Invocation.method(#getTvSeriesById, [id]),
          returnValue: Future<Map<String, dynamic>?>.value())
      as _i8.Future<Map<String, dynamic>?>);
  @override
  _i8.Future<List<Map<String, dynamic>>> getWatchlistMovies() =>
      (super.noSuchMethod(Invocation.method(#getWatchlistMovies, []),
          returnValue: Future<List<Map<String, dynamic>>>.value(
              <Map<String, dynamic>>[]))
      as _i8.Future<List<Map<String, dynamic>>>);
  @override
  _i8.Future<List<Map<String, dynamic>>> getWatchlistTv() =>
      (super.noSuchMethod(Invocation.method(#getWatchlistTv, []),
          returnValue: Future<List<Map<String, dynamic>>>.value(
              <Map<String, dynamic>>[]))
      as _i8.Future<List<Map<String, dynamic>>>);
}

/// A class which mocks [Client].
class MockDatabaseHelperTvSeries extends _i1.Mock implements _i24.DatabaseHelperTv {
  MockDatabaseHelperTvSeries() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<_i24.Database?> get database =>
      (super.noSuchMethod(Invocation.getter(#database),
          returnValue: Future<_i24.Database?>.value())
      as _i8.Future<_i24.Database?>);
  @override
  _i8.Future<int> insertWatchlistTv(_i22.TableTv? tvSeries) =>
      (super.noSuchMethod(
          Invocation.method(#insertTvSeriesWatchlist, [tvSeries]),
          returnValue: Future<int>.value(0)) as _i8.Future<int>);
  @override
  _i8.Future<int> removeWatchlistTv(_i22.TableTv? tvSeries) =>
      (super.noSuchMethod(
          Invocation.method(#removeTvSeriesWatchlist, [tvSeries]),
          returnValue: Future<int>.value(0)) as _i8.Future<int>);
  @override
  _i8.Future<Map<String, dynamic>?> getTvById(int? id) =>
      (super.noSuchMethod(Invocation.method(#getTvSeriesById, [id]),
          returnValue: Future<Map<String, dynamic>?>.value())
      as _i8.Future<Map<String, dynamic>?>);
  @override
  _i8.Future<List<Map<String, dynamic>>> getWatchlistTv() =>
      (super.noSuchMethod(Invocation.method(#getWatchlistTvSeries, []),
          returnValue: Future<List<Map<String, dynamic>>>.value(
              <Map<String, dynamic>>[]))
      as _i8.Future<List<Map<String, dynamic>>>);
}
/// See the documentation for Mockito's code generation for more information.
class MockHttpClient extends _i1.Mock implements _i5.Client {
  MockHttpClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<_i5.Response> head(Uri? url, {Map<String, String>? headers}) =>
      (super.noSuchMethod(Invocation.method(#head, [url], {#headers: headers}),
          returnValue: Future<_i5.Response>.value(_FakeResponse_3()))
      as _i8.Future<_i5.Response>);
  @override
  _i8.Future<_i5.Response> get(Uri? url, {Map<String, String>? headers}) =>
      (super.noSuchMethod(Invocation.method(#get, [url], {#headers: headers}),
          returnValue: Future<_i5.Response>.value(_FakeResponse_3()))
      as _i8.Future<_i5.Response>);
  @override
  _i8.Future<_i5.Response> post(Uri? url,
      {Map<String, String>? headers,
        Object? body,
        _i25.Encoding? encoding}) =>
      (super.noSuchMethod(
          Invocation.method(#post, [url],
              {#headers: headers, #body: body, #encoding: encoding}),
          returnValue: Future<_i5.Response>.value(_FakeResponse_3()))
      as _i8.Future<_i5.Response>);
  @override
  _i8.Future<_i5.Response> put(Uri? url,
      {Map<String, String>? headers,
        Object? body,
        _i25.Encoding? encoding}) =>
      (super.noSuchMethod(
          Invocation.method(#put, [url],
              {#headers: headers, #body: body, #encoding: encoding}),
          returnValue: Future<_i5.Response>.value(_FakeResponse_3()))
      as _i8.Future<_i5.Response>);
  @override
  _i8.Future<_i5.Response> patch(Uri? url,
      {Map<String, String>? headers,
        Object? body,
        _i25.Encoding? encoding}) =>
      (super.noSuchMethod(
          Invocation.method(#patch, [url],
              {#headers: headers, #body: body, #encoding: encoding}),
          returnValue: Future<_i5.Response>.value(_FakeResponse_3()))
      as _i8.Future<_i5.Response>);
  @override
  _i8.Future<_i5.Response> delete(Uri? url,
      {Map<String, String>? headers,
        Object? body,
        _i25.Encoding? encoding}) =>
      (super.noSuchMethod(
          Invocation.method(#delete, [url],
              {#headers: headers, #body: body, #encoding: encoding}),
          returnValue: Future<_i5.Response>.value(_FakeResponse_3()))
      as _i8.Future<_i5.Response>);
  @override
  _i8.Future<String> read(Uri? url, {Map<String, String>? headers}) =>
      (super.noSuchMethod(Invocation.method(#read, [url], {#headers: headers}),
          returnValue: Future<String>.value('')) as _i8.Future<String>);
  @override
  _i8.Future<_i26.Uint8List> readBytes(Uri? url,
      {Map<String, String>? headers}) =>
      (super.noSuchMethod(
          Invocation.method(#readBytes, [url], {#headers: headers}),
          returnValue: Future<_i26.Uint8List>.value(_i26.Uint8List(0)))
      as _i8.Future<_i26.Uint8List>);
  @override
  _i8.Future<_i5.StreamedResponse> send(_i5.BaseRequest? request) =>
      (super.noSuchMethod(Invocation.method(#send, [request]),
          returnValue:
          Future<_i5.StreamedResponse>.value(_FakeStreamedResponse_4()))
      as _i8.Future<_i5.StreamedResponse>);
  @override
  void close() => super.noSuchMethod(Invocation.method(#close, []),
      returnValueForMissingStub: null);
}

/// A class which mocks [IOClient].
///
/// See the documentation for Mockito's code generation for more information.
class MockIOClient extends _i1.Mock implements _i6.IOClient {
  MockIOClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<_i6.IOStreamedResponse> send(_i5.BaseRequest? request) =>
      (super.noSuchMethod(Invocation.method(#send, [request]),
          returnValue: Future<_i6.IOStreamedResponse>.value(
              _FakeIOStreamedResponse_5()))
      as _i8.Future<_i6.IOStreamedResponse>);
  @override
  void close() => super.noSuchMethod(Invocation.method(#close, []),
      returnValueForMissingStub: null);
  @override
  _i8.Future<_i5.Response> head(Uri? url, {Map<String, String>? headers}) =>
      (super.noSuchMethod(Invocation.method(#head, [url], {#headers: headers}),
          returnValue: Future<_i5.Response>.value(_FakeResponse_3()))
      as _i8.Future<_i5.Response>);
  @override
  _i8.Future<_i5.Response> get(Uri? url, {Map<String, String>? headers}) =>
      (super.noSuchMethod(Invocation.method(#get, [url], {#headers: headers}),
          returnValue: Future<_i5.Response>.value(_FakeResponse_3()))
      as _i8.Future<_i5.Response>);
  @override
  _i8.Future<_i5.Response> post(Uri? url,
      {Map<String, String>? headers,
        Object? body,
        _i25.Encoding? encoding}) =>
      (super.noSuchMethod(
          Invocation.method(#post, [url],
              {#headers: headers, #body: body, #encoding: encoding}),
          returnValue: Future<_i5.Response>.value(_FakeResponse_3()))
      as _i8.Future<_i5.Response>);
  @override
  _i8.Future<_i5.Response> put(Uri? url,
      {Map<String, String>? headers,
        Object? body,
        _i25.Encoding? encoding}) =>
      (super.noSuchMethod(
          Invocation.method(#put, [url],
              {#headers: headers, #body: body, #encoding: encoding}),
          returnValue: Future<_i5.Response>.value(_FakeResponse_3()))
      as _i8.Future<_i5.Response>);
  @override
  _i8.Future<_i5.Response> patch(Uri? url,
      {Map<String, String>? headers,
        Object? body,
        _i25.Encoding? encoding}) =>
      (super.noSuchMethod(
          Invocation.method(#patch, [url],
              {#headers: headers, #body: body, #encoding: encoding}),
          returnValue: Future<_i5.Response>.value(_FakeResponse_3()))
      as _i8.Future<_i5.Response>);
  @override
  _i8.Future<_i5.Response> delete(Uri? url,
      {Map<String, String>? headers,
        Object? body,
        _i25.Encoding? encoding}) =>
      (super.noSuchMethod(
          Invocation.method(#delete, [url],
              {#headers: headers, #body: body, #encoding: encoding}),
          returnValue: Future<_i5.Response>.value(_FakeResponse_3()))
      as _i8.Future<_i5.Response>);
  @override
  _i8.Future<String> read(Uri? url, {Map<String, String>? headers}) =>
      (super.noSuchMethod(Invocation.method(#read, [url], {#headers: headers}),
          returnValue: Future<String>.value('')) as _i8.Future<String>);
  @override
  _i8.Future<_i26.Uint8List> readBytes(Uri? url,
      {Map<String, String>? headers}) =>
      (super.noSuchMethod(
          Invocation.method(#readBytes, [url], {#headers: headers}),
          returnValue: Future<_i26.Uint8List>.value(_i26.Uint8List(0)))
      as _i8.Future<_i26.Uint8List>);
}
