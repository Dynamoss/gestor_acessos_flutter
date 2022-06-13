import 'package:ApplicationName/pages/login/login_page.dart';
import 'package:ApplicationName/pages/recebidasList/recebidas_list_page.dart';
import 'package:ApplicationName/pages/solicitadasList/solicitadas_list_page.dart';
import 'package:ApplicationName/pages/solicitar/solicitar_page.dart';
import 'package:ApplicationName/pages/teladeloginscreen3/teladeloginscreen3.dart';
import 'package:ApplicationName/pages/telainicial/telainicial.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const Telainicial()),
        ChildRoute('/login', child: (context, args) => const LoginPage()),
        ChildRoute('/home',
            child: (context, args) => const Teladeloginscreen3()),
        ChildRoute('/solicitar',
            child: (context, args) => const SolicitarPage()),
        ChildRoute('/solicitadasList',
            child: (context, args) => const SolicitadasListPage()),
        ChildRoute('/recebidasList',
            child: (context, args) => const RecebidasListPage()),
      ];
}
