import 'dart:developer';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Bongos extends StatelessWidget {
  const Bongos({super.key});

  @override
  Widget build(BuildContext context) {
    //Aplicación en fullscreen mode (para salir usar gestos tactiles swipe down/up, right/left)
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.immersive,
    );

    //Pintamos en pantalla el instrumento musical
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                height: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/background2.jpg"),
                    fit: BoxFit.cover,
                    colorFilter:
                        ColorFilter.mode(Colors.lightBlue, BlendMode.screen),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(40),
                      child: CircleAvatar(
                        radius: 130,
                        backgroundColor: Colors.brown,
                        child: Center(
                          child: TextButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.play(
                                AssetSource("bongo1.wav"),
                              );
                            },
                            child: const CircleAvatar(
                              radius: 120,
                              backgroundColor:
                                  Color.fromRGBO(130, 120, 90, 0.8),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(40),
                      child: CircleAvatar(
                        radius: 150,
                        backgroundColor: Colors.brown,
                        child: Center(
                          child: TextButton(
                            onPressed: () {
                              final player = AudioPlayer();
                              player.play(
                                AssetSource("bongo2.wav"),
                              );
                            },
                            child: const CircleAvatar(
                              radius: 140,
                              backgroundColor:
                                  Color.fromRGBO(130, 140, 120, 0.6),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //Este bloque lo ponemos para que el anterior no quede pegado al borde de la pantalla
              //así queda centrado entre el botón y este bloque.
              Container(
                color: Colors.indigo,
                child: const Text(""),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.lightGreenAccent,
                ),
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource("bongo1.wav"));
                },
                child: const Text(
                  "bongo1",
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.yellowAccent,
                ),
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource("bongo2.wav"));
                },
                child: const Text(
                  "bongo2",
                ),
              ),
            ),*/
