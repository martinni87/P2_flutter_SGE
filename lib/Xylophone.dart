import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';
import 'package:flutter_clase_4/XylophoneNotes.dart';

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});

  //Método para definir el instrumento, devuelve widget Expanded a usar dentro de MaterialApp
  Expanded buildKey(int noteIndex) {
    //Notes es una clase propia definida en el archivo XylophoneNotes.dart
    XylophoneNotes note = XylophoneNotes();
    note.setNote(noteIndex);

    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: note.color,
        ),
        onPressed: () {
          final player = AudioPlayer();
          player.play(AssetSource(note.file));
        },
        child: Text(
          note.noteName,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //Aplicación en fullscreen mode (para salir usar gestos tactiles swipe down/up, right/left)
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.immersive,
    );

    //Pintamos en pantalla el instrumento musical
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back),
            ),
            buildKey(1),
            buildKey(2),
            buildKey(3),
            buildKey(4),
            buildKey(5),
            buildKey(6),
            buildKey(7),
            buildKey(8),
          ],
        ),
      ),
    );
  }
}
