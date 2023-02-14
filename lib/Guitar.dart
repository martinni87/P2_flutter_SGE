import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Guitar extends StatelessWidget {
  const Guitar({super.key});

  @override
  Widget build(BuildContext context) {
    //Aplicación en fullscreen mode (para salir usar gestos tactiles swipe down/up, right/left)
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.immersive,
    );

    //Pintamos en pantalla el instrumento musical
    return Scaffold(
      body: SafeArea(
        child: Row(
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
            SizedBox(
              height: double.infinity,
              width: 600,
              child: Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text("Hola1"),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Hola2"),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Hola3"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
