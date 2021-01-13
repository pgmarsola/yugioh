import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'model/data.dart';

import 'controller/monster.controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  MonsterController _monsterController;

  @override
  void initState() {
    super.initState();
    _monsterController = MonsterController();
    _loadingEffectMonster();
  }

  _loadingEffectMonster() async {
    _monsterController = MonsterController();
    await _monsterController.fetchCards("Aqua");
    await _monsterController.fetchCards("Beast");
    await _monsterController.fetchCards("Beast-Warrior");
    await _monsterController.fetchCards("Creator-God");
    await _monsterController.fetchCards("Cyberse");
    await _monsterController.fetchCards("Dinosaur");
    await _monsterController.fetchCards("Divine-Beast");
    await _monsterController.fetchCards("Dragon");
    await _monsterController.fetchCards("Fairy");
    await _monsterController.fetchCards("Fiend");
    await _monsterController.fetchCards("Fish");
    await _monsterController.fetchCards("Insect");
    await _monsterController.fetchCards("Machine");
    await _monsterController.fetchCards("Plant");
    await _monsterController.fetchCards("Psychic");
    await _monsterController.fetchCards("Pyro");
    await _monsterController.fetchCards("Reptile");
    await _monsterController.fetchCards("Sea Serpent");
    await _monsterController.fetchCards("Spellcaster");
    await _monsterController.fetchCards("Thunder");
    await _monsterController.fetchCards("Warrior");
    await _monsterController.fetchCards("Winged Beast");
  }

  Widget _listCards(
    List<Data> dataCards,
    BuildContext context,
  ) {
    List<Widget> list = <Widget>[];
    for (int i = 0; i < 100; i++) {
      list.add(Column(
        children: [
          Column(
            children: [
              Text(dataCards[i].id.toString()),
              Text(dataCards[i].name),
              Text(dataCards[i].type),
              Text(dataCards[i].desc),
              Text(dataCards[i].atk.toString()),
              Text(dataCards[i].def.toString()),
              Text(dataCards[i].level.toString()),
              Text(dataCards[i].race),
              Text(dataCards[i].attribute),
              Container(
                height: 150,
                width: 80,
                child: Image.network(
                  dataCards[i].cardImages[0].imageUrl,
                  scale: 1,
                ),
              )
            ],
          ),
          Divider(
            color: Color(0xffCDCDCD),
          )
        ],
      ));
    }
    return new Column(children: list);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var screenHeight = (size.height - MediaQuery.of(context).padding.top) / 100;

    return Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        appBar: AppBar(
          title: Text("Cartas Yu-gi-oh!"),
          backgroundColor: Color(0xffEEC25E),
          actions: [
            IconButton(
                icon: Icon(Icons.list),
                onPressed: () {
                  //              Navigator.push(
                  //                context,
                  //                MaterialPageRoute(
                  //                    builder: (context) => TelaTeste(
                  //                        _effectMonsterController.effectMonster.data)),
                  //              );
                })
          ],
        ),
        body: SingleChildScrollView(
            child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(screenHeight * 2.5),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Observer(builder: (context) {
                        if (_monsterController.isLoading) {
                          return Container(
                            width: 100,
                            height: 100,
                            child: CircularProgressIndicator(),
                            margin: EdgeInsets.all(screenHeight * 1.5),
                            color: Colors.amber,
                          );
                        } else {
                          if (_monsterController.aqua.data != null &&
                              _monsterController.aqua.data.isNotEmpty) {
                            return Container(child: Observer(builder: (_) {
                              return _listCards(
                                  _monsterController.aqua.data, context);
                            }));
                          } else {
                            return Text('não foi possivel carregar dados');
                          }
                        }
                      }),
                    ]))));
  }
}
