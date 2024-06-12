import 'package:flutter/material.dart';
import 'package:tarea_extra/constants/textstyle_constant.dart';
import 'package:tarea_extra/constants/color_constant.dart';

class ListaPortafolioWidget extends StatelessWidget {
  IconData icono;
  String moneda;
  String nombre;
  String monto;
  String cambio;
  String porcentaje;
  Color color;

  ListaPortafolioWidget({
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
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: color,
                  child: Icon(icono, color: colorElemento),
                ),
                const SizedBox(width: 8),                
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(nombre, style: const TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 4),
                    Text(moneda, style: const TextStyle(color: Colors.grey)),
                  ],
                ),
                const SizedBox(width: 8),              
              ],
            ),                  
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(monto, style: const TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 2),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Text(porcentaje, style: const TextStyle(color: Colors.green, fontSize: 10,)),                      
                    ),
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
