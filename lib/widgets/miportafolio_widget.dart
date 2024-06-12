import 'package:flutter/material.dart';
import 'package:tarea_extra/constants/textstyle_constant.dart';
import 'package:tarea_extra/constants/color_constant.dart';

class PortafolioWidget extends StatelessWidget {
  IconData icono;
  String moneda;
  String nombre;
  String monto;
  String cambio;
  String porcentaje;
  Color color;

  PortafolioWidget({
    required this.icono,
    required this.moneda,
    required this.nombre,
    required this.monto,
    required this.cambio,
    required this.porcentaje,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: color,
                  child: Icon(icono, color: colorElemento),
                ),
                const SizedBox(width: 5),
                Text(moneda),
              ],
            ),   
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 8),
                    Text(monto, style: const TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 4),
                    Text(cambio, style: const TextStyle(color: Colors.grey)),
                  ],
                ),
                const Column(
                  children: [
                    const Icon(Icons.line_axis_sharp, color: Colors.blue, size: 40,)
                  ],
                ),                    
              ],
            ),                      
          ],
        ),
      ),
    );
  }
}
