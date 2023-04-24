import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "3.5. Home screen",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio({Key? key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: cuerpo(),
    );
  }
}

Widget cuerpo() {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://images.unsplash.com/photo-1643553517154-24eb7fd86437?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1632&q=80"),
            fit: BoxFit.cover)),
    child: Column(
      children: [
        SizedBox(height: 50),
        Image.asset(
          'assets/logo.png',
          width: 220,
        ),
        SizedBox(height: 20),
        Expanded(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                titulo(),
                nombre(),
                icon(),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget titulo() {
  return Text(
    "CinemApp",
    style: TextStyle(
      color: Color.fromARGB(255, 255, 255, 255),
      fontSize: 70.0,
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget nombre() {
  return Text(
    "Cine en tu móvil. ¡Empieza la función!",
    style: TextStyle(
      color: Colors.white,
      fontSize: 20.0,
    ),
  );
}









Widget icon() {
  return Padding(
    padding: const EdgeInsets.only(top: 200.0, bottom: 5.0),
    child: Icon(Icons.account_circle,
        size: 60, color: Color.fromARGB(255, 255, 255, 255)),
  );
}




