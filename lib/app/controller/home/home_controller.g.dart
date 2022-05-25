// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on HomeControllerBase, Store {
  Computed<String>? _$valueTitleComputed;

  @override
  String get valueTitle =>
      (_$valueTitleComputed ??= Computed<String>(() => super.valueTitle,
              name: 'HomeControllerBase.valueTitle'))
          .value;
  Computed<String>? _$valueDescriotinComputed;

  @override
  String get valueDescriotin => (_$valueDescriotinComputed ??= Computed<String>(
          () => super.valueDescriotin,
          name: 'HomeControllerBase.valueDescriotin'))
      .value;
  Computed<bool>? _$valueFinishedComputed;

  @override
  bool get valueFinished =>
      (_$valueFinishedComputed ??= Computed<bool>(() => super.valueFinished,
              name: 'HomeControllerBase.valueFinished'))
          .value;

  late final _$titleAtom =
      Atom(name: 'HomeControllerBase.title', context: context);

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  late final _$descriptionAtom =
      Atom(name: 'HomeControllerBase.description', context: context);

  @override
  String get description {
    _$descriptionAtom.reportRead();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.reportWrite(value, super.description, () {
      super.description = value;
    });
  }

  late final _$finishedAtom =
      Atom(name: 'HomeControllerBase.finished', context: context);

  @override
  bool get finished {
    _$finishedAtom.reportRead();
    return super.finished;
  }

  @override
  set finished(bool value) {
    _$finishedAtom.reportWrite(value, super.finished, () {
      super.finished = value;
    });
  }

  late final _$HomeControllerBaseActionController =
      ActionController(name: 'HomeControllerBase', context: context);

  @override
  void setTitle(dynamic value) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.setTitle');
    try {
      return super.setTitle(value);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDescription(dynamic value) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.setDescription');
    try {
      return super.setDescription(value);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
title: ${title},
description: ${description},
finished: ${finished},
valueTitle: ${valueTitle},
valueDescriotin: ${valueDescriotin},
valueFinished: ${valueFinished}
    ''';
  }
}
