import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/categoria');
                Modular.to.pushNamed('/categoria',
                    arguments: 'Categoria Selecionada @@@@@');
              },
              child: const Text('Categoria Module'),
            ),
            TextButton(
              onPressed: () {
                //NamedParameters: Recupera pelo Modular.args.params
                Modular.to.pushNamed('/produto/Produto_X');
              },
              child: const Text('Produto Module'),
            ),
            TextButton(
              onPressed: () {
                //QueryParameters: Recupera pelo Modular.args.queryParameter
                Modular.to.pushNamed('/produto/xyz?nome=Produto_X');
              },
              child: const Text('Produto Query Param Module'),
            ),
          ],
        ),
      ),
    );
  }
}
