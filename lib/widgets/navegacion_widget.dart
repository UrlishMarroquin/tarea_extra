import 'package:flutter/material.dart';
import 'package:tarea_extra/constants/textstyle_constant.dart';
import 'package:tarea_extra/constants/color_constant.dart';

class NavegacionWidget extends StatelessWidget {
  String nombre;
  Color texto;
  Color fondo;

  NavegacionWidget({
    required this.nombre,
    required this.texto,
    required this.fondo,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: fondo,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
        child: Column(
          children: [
            Text(nombre, style: TextStyle(color: texto)),                    
          ],
        ),
      ),
    );
  }
}
