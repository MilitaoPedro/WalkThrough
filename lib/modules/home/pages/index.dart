import 'package:flutter/material.dart';
import 'package:walkthroughv1/modules/agenda/pages/index.dart';
import 'package:walkthroughv1/modules/login/pages/index.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget botao(String texto, {void Function()? onPressed}) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: onPressed,
          // ignore: sort_child_properties_last
          child: Text(
            texto,
            style: const TextStyle(fontSize: 18),
          ),
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(300, 90),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bem vindo, Raulivan',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            botao("Agenda", onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const AgendaPage()));
            }),
            botao("Acesso", onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const AgendaPage()));
            }),
          ],
        ),
      ),
    );
  }
}
