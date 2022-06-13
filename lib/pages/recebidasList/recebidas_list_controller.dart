import "package:mobx/mobx.dart";

part 'recebidas_list_controller.g.dart';

class RecebidasListController = ControllerBase with _$RecebidasListController;

abstract class ControllerBase with Store {
  final List<Map<String, dynamic>> entries = [
    {
      "id": 1,
      "codigo": "345",
      "modulo": "B-08",
      "Data": "05/12/2021",
    },
    {
      "id": 2,
      "codigo": "375",
      "modulo": "D-05",
      "Data": "08/12/2021",
    },
    {
      "id": 3,
      "codigo": "499",
      "modulo": "H-14",
      "Data": "11/11/2021",
    },
  ];

  final List<int> colorCodes = <int>[
    800,
    700,
    700,
    600,
    600,
    800,
    700,
    700,
    600,
    600,
    800,
    700,
    700,
    600,
    600
  ];

  @observable
  String buscar = "";

  @action
  setBuscando(String value) {
    buscar = value;
  }

  @computed
  List get resultadoBusca {
    if (buscar.isEmpty) {
      return entries.sublist(0, entries.length);
    } else {
      return entries
          .where((entries) =>
              entries["id"]
                  .toString()
                  .toLowerCase()
                  .contains(buscar.toLowerCase()) ||
              entries["codigo"].toLowerCase().contains(buscar.toLowerCase()) ||
              entries["modulo"].toLowerCase().contains(buscar.toLowerCase()) ||
              entries["Data"].toLowerCase().contains(buscar.toLowerCase()))
          .toList();

      // foundUsers = results;

      // we use the toLowerCase() method to make it case-insensitive
    }
  }
}
