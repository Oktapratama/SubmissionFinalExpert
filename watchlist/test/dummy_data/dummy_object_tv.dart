import 'package:core/data/models/tv/tv_table.dart';
import 'package:core/domain/entities/genre.dart';
import 'package:tv_series/domain/entities/tv/tv.dart';
import 'package:tv_series/domain/entities/tv/tv_detail.dart';

final testTv = Tv(
    posterPath: "/y2roOFsew9nJKKVwwJCHSyzgpK9.jpg",
    popularity: 130.362,
    id: 61374,
    backdropPath: "/yOarY3Yo0NMkuTuft87M5oAZa3C.jpg",
    voteAverage: 8.5,
    overview:
    "Ken Kaneki is a bookworm college student who meets a girl names Rize at a cafe he frequents. They're the same age and have the same interests, so they quickly become close. Little does Kaneki know that Rize is a ghoul – a kind of monster that lives by hunting and devouring human flesh. When part of her special organ – \"the red child\" – is transplanted into Kaneki, he becomes a ghoul himself, trapped in a warped world where humans are not the top of the food chain.",
    originCountry: const ["JP"],
    genreIds: const [10759,16,18,9648],
    originalLanguage: "ja",
    voteCount: 1821,
    name: "Tokyo Ghoul",
    originalName: "東京喰種トーキョーグール");

final testTvList = [testTv];

final testTvDetail = DetailTv(
  // backdropPath: 'backdropPath',
  episodeRunTime: const [60],
  firstAirDate: DateTime(2011 - 04 - 17),
  genres: const [Genre(id: 1, name: 'Action')],
  homepage: 'homepage',
  id: 1,
  inProduction: false,
  languages: const ["en"],
  lastAirDate: DateTime(2019 - 05 - 19),
  name: 'name',
  numberOfEpisodes: 10,
  numberOfSeasons: 1,
  originCountry: const ["US"],
  originalLanguage: 'originalLanguage',
  originalName: 'originalName',
  overview: 'overview',
  popularity: 1,
  posterPath: 'posterPath',
  status: 'status',
  tagline: 'tagline',
  type: 'type',
  voteAverage: 1,
  voteCount: 1,
);

final testWatchlistTv = Tv.watchlist(
  id: 1,
  name: 'name',
  posterPath: 'posterPath',
  overview: 'overview',
);

const testTvTable = TableTv(
  id: 1,
  name: 'name',
  posterPath: 'posterPath',
  overview: 'overview',
);

final testTvMap = {
  'id': 1,
  'name': 'name',
  'posterPath': 'posterPath',
  'overview': 'overview',
};

