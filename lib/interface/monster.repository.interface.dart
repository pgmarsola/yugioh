import 'package:yugioh/model/monster.dart';

abstract class IMonsterRepository {
  Future<Monster> fetchMonsters(String race);
}
