import 'package:mobx/mobx.dart';
import 'package:yugioh/model/data.dart';
import 'package:yugioh/model/monster.dart';
import 'package:yugioh/repositories/monster.repository.dart';

part 'monster.controller.g.dart';

class MonsterController = _MonsterControllerBase with _$MonsterController;

abstract class _MonsterControllerBase with Store {
  MonsterRepository _monsterRepository;

  _MonsterControllerBase() {
    _monsterRepository = MonsterRepository();
  }

  @observable
  Monster aqua;

  @observable
  Monster beast;

  @observable
  Monster beastWarrior;

  @observable
  Monster creatorGod;

  @observable
  Monster cyberse;

  @observable
  Monster dinosaur;

  @observable
  Monster divineBeast;

  @observable
  Monster dragon;

  @observable
  Monster fairy;

  @observable
  Monster fiend;

  @observable
  Monster fish;

  @observable
  Monster insect;

  @observable
  Monster machine;

  @observable
  Monster plant;

  @observable
  Monster psychic;

  @observable
  Monster pyro;

  @observable
  Monster reptile;

  @observable
  Monster rock;

  @observable
  Monster seaSerpent;

  @observable
  Monster spellcaster;

  @observable
  Monster thunder;

  @observable
  Monster warrior;

  @observable
  Monster wingedBeast;

  @observable
  ObservableList<Data> listDB;

  @observable
  bool isLoading = false;

  @action
  fetchCards(String race) async {
    isLoading = true;

    if (race == "Aqua") {
      aqua = await _monsterRepository.fetchMonsters(race);
    } else if (race == "Beast") {
      beast = await _monsterRepository.fetchMonsters(race);
    } else if (race == "Beast-Warrior") {
      beastWarrior = await _monsterRepository.fetchMonsters(race);
    } else if (race == "Creator-God") {
      creatorGod = await _monsterRepository.fetchMonsters(race);
    } else if (race == "Cyberse") {
      cyberse = await _monsterRepository.fetchMonsters(race);
    } else if (race == "Dinosaur") {
      dinosaur = await _monsterRepository.fetchMonsters(race);
    } else if (race == "Divine-Beast") {
      divineBeast = await _monsterRepository.fetchMonsters(race);
    } else if (race == "Dragon") {
      dragon = await _monsterRepository.fetchMonsters(race);
    } else if (race == "Fairy") {
      fairy = await _monsterRepository.fetchMonsters(race);
    } else if (race == "Fiend") {
      fiend = await _monsterRepository.fetchMonsters(race);
    } else if (race == "Fish") {
      fish = await _monsterRepository.fetchMonsters(race);
    } else if (race == "Insect") {
      insect = await _monsterRepository.fetchMonsters(race);
    } else if (race == "Machine") {
      machine = await _monsterRepository.fetchMonsters(race);
    } else if (race == "Plant") {
      plant = await _monsterRepository.fetchMonsters(race);
    } else if (race == "Psychic") {
      psychic = await _monsterRepository.fetchMonsters(race);
    } else if (race == "Pyro") {
      pyro = await _monsterRepository.fetchMonsters(race);
    } else if (race == "Reptile") {
      reptile = await _monsterRepository.fetchMonsters(race);
    } else if (race == "Rock") {
      rock = await _monsterRepository.fetchMonsters(race);
    } else if (race == "Sea Serpent") {
      seaSerpent = await _monsterRepository.fetchMonsters(race);
    } else if (race == "Spellcaster") {
      spellcaster = await _monsterRepository.fetchMonsters(race);
    } else if (race == "Thunder") {
      thunder = await _monsterRepository.fetchMonsters(race);
    } else if (race == "Warrior") {
      warrior = await _monsterRepository.fetchMonsters(race);
    } else if (race == "Winged Beast") {
      wingedBeast = await _monsterRepository.fetchMonsters(race);
    }

    isLoading = false;
  }
}
