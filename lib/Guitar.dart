import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_clase_4/Bongos.dart';
import 'package:flutter_clase_4/GuitarNotes.dart';

class Guitar extends StatelessWidget {
  const Guitar({super.key});

  //Método para definir el instrumento, devuelve widget Expanded a usar dentro de MaterialApp
  Expanded buildKey(int noteIndex) {
    //Notes es una clase propia definida en el archivo GuitarNotes.dart
    GuitarNotes note = GuitarNotes();
    note.setNote(noteIndex);

    return Expanded(
      child: TextButton(
        onPressed: () {
          final player = AudioPlayer();
          player.play(AssetSource(note.file));
        },
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: double.infinity,
              color: Colors.black,
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/background3.png"),
                  fit: BoxFit.fill,
                ),
              ),
              // height: 500,
              width: MediaQuery.of(context).size.width - 128,
              // color: Colors.blue,
              //El ancho de los botones laterales por defecto es 56
              // width: MediaQuery.of(context).size.width - 112,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildKey(1),
                  buildKey(2),
                  buildKey(3),
                  buildKey(4),
                  buildKey(5),
                  buildKey(6),
                ],
              ),
            ),
            Container(
              height: double.infinity,
              color: Colors.black,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Bongos(),
                    ),
                  );
                },
                child: const Icon(Icons.arrow_forward),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
