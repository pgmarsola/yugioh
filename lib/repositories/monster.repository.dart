import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:yugioh/interface/monster.repository.interface.dart';
import 'package:yugioh/model/monster.dart';

class MonsterRepository extends IMonsterRepository {
  @override
  Future<Monster> fetchMonsters() async {
    try {
      var response = await http
          .get("https://db.ygoprodeck.com/api/v7/cardinfo.php?language=pt");
      if (response.statusCode == 200) {
        var monsterResponse = jsonDecode(response.body);
        var monster = Monster.fromJson(monsterResponse);
        return monster;
      } else {
        print('Erro ao obter dados');
        return null;
      }
    } catch (e) {
      print('$e');
      return null;
    }
  }
}
