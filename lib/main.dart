import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_clase_4/Bongos.dart';
import 'package:flutter_clase_4/Guitar.dart';
import 'package:flutter_clase_4/Xylophone.dart';

void main() {
  runApp(MaterialApp(
    //Quito el banner debug
    debugShowCheckedModeBanner: false,
    //Título de la app, color del tema global, y pasamos a la presentacion
    title: 'My first instruments',
    theme: ThemeData(
      primarySwatch: Colors.indigo,
    ),
    home: const Presentation(),
  ));
}

class Presentation extends StatelessWidget {
  const Presentation({super.key});

  @override
  Widget build(BuildContext context) {
    //Definimos orientación preferida en landscape
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('My first instruments')),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.lightBlue, BlendMode.screen),
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                radius: 80,
                backgroundColor: Color.fromRGBO(210, 100, 180, 1),
                child: TextButton(
                  child: const Image(
                    image: AssetImage("images/xylophone.png"),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Xylophone()),
                    );
                  },
                ),
              ),
              CircleAvatar(
                radius: 80,
                backgroundColor: Colors.orange,
                child: TextButton(
                  child: const Image(
                    image: AssetImage("images/guitar.png"),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Guitar()),
                    );
                  },
                ),
              ),
              CircleAvatar(
                radius: 80,
                backgroundColor: Colors.lightBlueAccent,
                child: TextButton(
                  child: const Image(
                    image: AssetImage("images/bongos.png"),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Bongos()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
