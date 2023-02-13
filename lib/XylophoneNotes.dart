import 'dart:developer';

import 'package:flutter/material.dart';

class XylophoneNotes {
  int note = 0;
  String noteName = "";
  String file = "";
  Color color = Colors.black;

  void setNote(int note) {
    this.note = note;
    switch (note) {
      case 1:
        noteName = "DO";
        file = "C_Low.wav";
        color = Colors.red;
        break;
      case 2:
        noteName = "RE";
        file = "D.wav";
        color = Colors.orange;
        break;
      case 3:
        noteName = "MI";
        file = "E.wav";
        color = Colors.yellow;
        break;
      case 4:
        noteName = "FA";
        file = "F.wav";
        color = Colors.green;
        break;
      case 5:
        noteName = "SOL";
        file = "G.wav";
        color = Colors.teal;
        break;
      case 6:
        noteName = "LA";
        file = "A.wav";
        color = Colors.blue;
        break;
      case 7:
        noteName = "SI";
        file = "B.wav";
        color = Colors.purple;
        break;
      case 8:
        noteName = "do";
        file = "C_High.wav";
        color = Colors.redAccent;
        break;
      default:
        log("Error en la selección del 'case' de notas");
    }
  }
}
