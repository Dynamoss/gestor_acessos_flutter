// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recebidas_list_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RecebidasListController on ControllerBase, Store {
  Computed<List<dynamic>> _$resultadoBuscaComputed;

  @override
  List<dynamic> get resultadoBusca => (_$resultadoBuscaComputed ??=
          Computed<List<dynamic>>(() => super.resultadoBusca,
              name: 'ControllerBase.resultadoBusca'))
      .value;

  final _$buscarAtom = Atom(name: 'ControllerBase.buscar');

  @override
  String get buscar {
    _$buscarAtom.reportRead();
    return super.buscar;
  }

  @override
  set buscar(String value) {
    _$buscarAtom.reportWrite(value, super.buscar, () {
      super.buscar = value;
    });
  }

  final _$ControllerBaseActionController =
      ActionController(name: 'ControllerBase');

  @override
  dynamic setBuscando(String value) {
    final _$actionInfo = _$ControllerBaseActionController.startAction(
        name: 'ControllerBase.setBuscando');
    try {
      return super.setBuscando(value);
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
buscar: ${buscar},
resultadoBusca: ${resultadoBusca}
    ''';
  }
}
