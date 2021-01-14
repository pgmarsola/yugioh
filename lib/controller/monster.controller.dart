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
  Monster monster;

  @observable
  ObservableList<Data> dataMonster;

  @observable
  bool isLoading = false;

  @action
  fetchCards() async {
    isLoading = true;
    monster = await _monsterRepository.fetchMonsters();

    if (monster != null) {
      listaMonster(monster.data);
    }
    isLoading = false;
  }

  @action
  listaMonster(list) {
    var monsterCards = ObservableList<Data>.of([]);
    var aqua = ObservableList<Data>.of([]);
    var beast = ObservableList<Data>.of([]);
    var cyberse = ObservableList<Data>.of([]);
    var dinosaur = ObservableList<Data>.of([]);
    var dragon = ObservableList<Data>.of([]);
    var fairy = ObservableList<Data>.of([]);
    var fiend = ObservableList<Data>.of([]);
    var fish = ObservableList<Data>.of([]);
    var insect = ObservableList<Data>.of([]);
    var machine = ObservableList<Data>.of([]);
    var plant = ObservableList<Data>.of([]);
    var psychic = ObservableList<Data>.of([]);
    var pyro = ObservableList<Data>.of([]);
    var reptile = ObservableList<Data>.of([]);
    var rock = ObservableList<Data>.of([]);
    var spellcaster = ObservableList<Data>.of([]);
    var thunder = ObservableList<Data>.of([]);
    var warrior = ObservableList<Data>.of([]);
    var wingedBeast = ObservableList<Data>.of([]);

    aqua = ObservableList<Data>.of(list.where((i) => i.race == "Aqua"));
    beast = ObservableList<Data>.of(list.where((i) => i.race == "Beast"));
    cyberse = ObservableList<Data>.of(list.where((i) => i.race == "Cyberse"));
    dinosaur = ObservableList<Data>.of(list.where((i) => i.race == "Dinosaur"));
    dragon = ObservableList<Data>.of(list.where((i) => i.race == "Dragon"));
    fairy = ObservableList<Data>.of(list.where((i) => i.race == "Fairy"));
    fiend = ObservableList<Data>.of(list.where((i) => i.race == "Fiend"));
    fish = ObservableList<Data>.of(list.where((i) => i.race == "Fish"));
    insect = ObservableList<Data>.of(list.where((i) => i.race == "Insect"));
    machine = ObservableList<Data>.of(list.where((i) => i.race == "Machine"));
    plant = ObservableList<Data>.of(list.where((i) => i.race == "Plant"));
    psychic = ObservableList<Data>.of(list.where((i) => i.race == "Psychic"));
    pyro = ObservableList<Data>.of(list.where((i) => i.race == "Pyro"));
    reptile = ObservableList<Data>.of(list.where((i) => i.race == "Reptile"));
    rock = ObservableList<Data>.of(list.where((i) => i.race == "Rock"));
    spellcaster =
        ObservableList<Data>.of(list.where((i) => i.race == "Spellcaster"));
    thunder = ObservableList<Data>.of(list.where((i) => i.race == "Thunder"));
    warrior = ObservableList<Data>.of(list.where((i) => i.race == "Warrior"));
    wingedBeast =
        ObservableList<Data>.of(list.where((i) => i.race == "Winged Beast"));

    monsterCards = ObservableList<Data>.of(aqua +
        beast +
        cyberse +
        dinosaur +
        dragon +
        fairy +
        fiend +
        fish +
        insect +
        machine +
        plant +
        psychic +
        pyro +
        reptile +
        rock +
        spellcaster +
        thunder +
        warrior +
        wingedBeast);

    dataMonster = monsterCards;
  }
}
