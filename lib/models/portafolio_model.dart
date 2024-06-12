import 'package:flutter/material.dart';

class PortafolioModel {
  IconData icono;
  String moneda;
  String nombre;
  String monto;
  String cambio;
  String porcentaje;
  Color color;

  PortafolioModel({
    required this.icono,
    required this.moneda,
    required this.nombre,
    required this.monto,
    required this.cambio,
    required this.porcentaje,
    required this.color,
  });
}