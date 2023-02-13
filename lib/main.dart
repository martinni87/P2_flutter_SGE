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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text('Xylophone'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Xylophone()),
                  );
                },
              ),
              ElevatedButton(
                child: const Text('Guitar'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Guitar()),
                  );
                },
              ),
              ElevatedButton(
                child: const Text('Bongos'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Bongos()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
