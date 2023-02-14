import 'dart:developer';

import 'package:flutter/material.dart';

class GuitarNotes {
  int note = 0;
  String noteName = "";
  String file = "";
  Color color = Colors.black;

  void setNote(int note) {
    this.note = note;
    switch (note) {
      case 1:
        noteName = "MiH";
        file = "guitar_MiH.wav";
        break;
      case 2:
        noteName = "Si";
        file = "guitar_Si.wav";
        break;
      case 3:
        noteName = "Sol";
        file = "guitar_Sol.wav";
        break;
      case 4:
        noteName = "Re";
        file = "guitar_Re.wav";
        break;
      case 5:
        noteName = "La";
        file = "guitar_La.wav";
        break;
      case 6:
        noteName = "MiL";
        file = "guitar_MiL.wav";
        break;
    }
  }
}
