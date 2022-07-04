import 'package:flutter/material.dart';
import 'package:walkthroughv1/modules/home/pages/index.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Walk Through',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(255, 236, 238, 255),
          primarySwatch: Colors.deepPurple),
      home: const MyHomePage(title: 'Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
          'Home',
        style: TextStyle(fontSize: 20),
      )),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.05),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Walk Through",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(21, 0, 112, 44),
                        fontWeight: FontWeight.bold,
                        fontSize: 70,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.14,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromRGBO(21, 0, 112, 44),
                      side: const BorderSide(
                          width: 5, color: Color.fromRGBO(21, 0, 112, 44)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text('Coordenador',
                        style: TextStyle(color: Colors.white, fontSize: 25)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.14,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(_createRoute());
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromRGBO(21, 0, 112, 44),
                      side: const BorderSide(
                          width: 5, color: Color.fromRGBO(21, 0, 112, 44)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text('Professor',
                        style: TextStyle(color: Colors.white, fontSize: 25)),
                  ),
                ),
              )
            ]),
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const SizedBox(
              height: 64,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                ),
                child: Text(
                  "MENU",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              child: ListTile(
                onTap: () {},
                title: const Text(
                  "Agenda",
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => RouteProfessor(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

class RouteProfessor extends StatefulWidget {
  @override
  _RouteProfessorState createState() => _RouteProfessorState();
}

class _RouteProfessorState extends State<RouteProfessor> {

  @override
  Widget build(BuildContext context) {
    Widget campoForm(String texto, double paddingtop, bool senha) {
      return Padding(
        padding: EdgeInsets.only(top: paddingtop),
        child: TextFormField(
          obscureText: senha,
          style: const TextStyle(
            color: Colors.deepPurple,
          ),
          decoration: InputDecoration(
            hintStyle:
                const TextStyle(color: Color.fromARGB(255, 144, 117, 189)),
            hintText: texto,
            enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color.fromARGB(255, 144, 117, 189)),
                borderRadius: BorderRadius.circular(10.0)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.deepPurple,
                  width: 1.6,
                ),
                borderRadius: BorderRadius.circular(10.0)),
          ),
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulário dos professores'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(90, 0, 90, 0),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Entre",
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 40,
                    fontFamily: 'Roboto'),
              ),
              campoForm("Login", 20, false),
              campoForm("Senha", 10, true),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const HomePage())
                      );
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Entrar",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
