import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/produto/produto_page.dart';

import 'produto2_page.dart';

class ProdutoModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/:nome/xyz',
          child: (context, args) => ProdutoPage(
            nome: args.params['nome'],
          ),
        ),
        ChildRoute(
          '/xyz',
          child: (context, args) => Produto2Page(
            //Query params para passar argumentos opcionais
            nome: args.queryParams['nome'],
          ),
        ),
      ];
}
