import 'package:flutter/material.dart';

Widget fila(MainAxisAlignment alignment, TextEditingController valorA,
    TextEditingController valorB) {
  return Row(
    mainAxisAlignment: alignment,
    children: [
      Flexible(
        child: SizedBox(
          width: 100.0,
          child: TextField(
            controller: valorA,
            obscureText: false,
            cursorColor: Colors.deepPurple,
            decoration: const InputDecoration(
              hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              labelStyle: TextStyle(fontSize: 13, color: Colors.deepPurple),
              border: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple)),
              labelText: 'Valor A',
            ),
          ),
        ),
      ),
      Flexible(
        child: SizedBox(
          width: 100.0,
          child: TextField(
            controller: valorB,
            obscureText: false,
            cursorColor: Colors.deepPurple,
            decoration: const InputDecoration(
              hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              labelStyle: TextStyle(fontSize: 13, color: Colors.deepPurple),
              border: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple)),
              labelText: 'Valor B',
            ),
          ),
        ),
      ),
    ],
  );
}
