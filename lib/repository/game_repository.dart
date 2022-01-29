import 'package:infogames/repository/models/trailer.dart';
import 'package:infogames/repository/models/model_barrel.dart';
import 'package:infogames/repository/service/game_service.dart';

class GameRepository {
  const GameRepository({
    required this.service,
  });
  final GameService service;

  Future<Game> getGames() async => service.getGames();

  Future<List<Genre>> getGenres() async => service.getGenres();

  Future<List<Result>> getGamesByCategory(int genreId) async =>
      service.getGamesByCategory(genreId);

  Future<GameDetail> getGameDetails(String id) async =>
      service.getGameDetails(id);

  Future<Trailer> getGameTrailers(String id) async =>
      service.getGameTrailers(id);
}
