// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monster.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MonsterController on _MonsterControllerBase, Store {
  final _$monsterAtom = Atom(name: '_MonsterControllerBase.monster');

  @override
  Monster get monster {
    _$monsterAtom.reportRead();
    return super.monster;
  }

  @override
  set monster(Monster value) {
    _$monsterAtom.reportWrite(value, super.monster, () {
      super.monster = value;
    });
  }

  final _$dataMonsterAtom = Atom(name: '_MonsterControllerBase.dataMonster');

  @override
  ObservableList<Data> get dataMonster {
    _$dataMonsterAtom.reportRead();
    return super.dataMonster;
  }

  @override
  set dataMonster(ObservableList<Data> value) {
    _$dataMonsterAtom.reportWrite(value, super.dataMonster, () {
      super.dataMonster = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_MonsterControllerBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$fetchCardsAsyncAction =
      AsyncAction('_MonsterControllerBase.fetchCards');

  @override
  Future fetchCards() {
    return _$fetchCardsAsyncAction.run(() => super.fetchCards());
  }

  final _$_MonsterControllerBaseActionController =
      ActionController(name: '_MonsterControllerBase');

  @override
  dynamic listaMonster(dynamic list) {
    final _$actionInfo = _$_MonsterControllerBaseActionController.startAction(
        name: '_MonsterControllerBase.listaMonster');
    try {
      return super.listaMonster(list);
    } finally {
      _$_MonsterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
monster: ${monster},
dataMonster: ${dataMonster},
isLoading: ${isLoading}
    ''';
  }
}
