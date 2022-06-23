import 'package:flutter/material.dart';
import 'package:patrones/memento/caretaker.dart';
import 'package:patrones/memento/text.dart';

class MementoView extends StatefulWidget {
  const MementoView({Key? key}) : super(key: key);

  @override
  State<MementoView> createState() => _MementoViewState();
}

class _MementoViewState extends State<MementoView> {
  final _valor = TextEditingController();
  final Texto _texto = Texto();
  final Caretaker _caretaker = Caretaker();

  TextStyle estilo() {
    // ignore: prefer_const_constructors
    return TextStyle(
        inherit: true,
        color: Colors.deepPurple,
        fontStyle: FontStyle.italic,
        fontSize: 18.0);
  }

  @override
  void dispose() {
    _valor.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MEMENTO",
          style: estilo(),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 151, 247, 159),
          /* image: DecorationImage(
            image: AssetImage("assets/picture1.jpg"),
            fit: BoxFit.cover,
          ), */
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: _valor,
                obscureText: false,
                maxLines: 10,
                maxLength: 500,
                cursorColor: Colors.deepPurple,
                decoration: const InputDecoration(
                  hintStyle:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  labelStyle: TextStyle(fontSize: 13, color: Colors.deepPurple),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepPurple)),
                  labelText: 'Introdusca su texto',
                  icon: Icon(
                    Icons.textsms,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      _texto.setTextoFromMemento(_caretaker.delante());
                      _valor.text = _texto.getTexto();
                    },
                    child: const Icon(
                      Icons.arrow_right,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      _texto.setTextoFromMemento(_caretaker.atras());
                      _valor.text = _texto.getTexto();
                    },
                    child: const Icon(
                      Icons.arrow_left,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                _texto.setTexto(_valor.text);
                _caretaker.backUp(_texto.createMemento());
                //print(_caretaker.mementos());
              },
              child: Text(
                "Crear Memento",
                style: estilo(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
