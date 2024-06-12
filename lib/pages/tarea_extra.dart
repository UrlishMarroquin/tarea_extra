import 'package:flutter/material.dart';
import 'package:tarea_extra/constants/textstyle_constant.dart';
import 'package:tarea_extra/constants/color_constant.dart';
import 'package:tarea_extra/models/portafolio_model.dart';
import 'package:tarea_extra/widgets/miportafolio_widget.dart';
import 'package:tarea_extra/models/navegacion_model.dart';
import 'package:tarea_extra/widgets/navegacion_widget.dart';
import 'package:tarea_extra/widgets/listaportafolio_widget.dart';

class TareaExtra extends StatefulWidget {
    @override
  State<TareaExtra> createState() => _TareaExtra();
}

class _TareaExtra extends State<TareaExtra> {

  List<NavegacionModel> navegacionList = [
    NavegacionModel(
      nombre: "Name",
      texto: Colors.white,
      fondo: Colors.blue,
    ),
    NavegacionModel(
      nombre: "24h",
      texto: Colors.black,
      fondo: Colors.white70,
    ),
    NavegacionModel(
      nombre: "My portfolio",
      texto: Colors.black,
      fondo: Colors.white70,
    ),
    NavegacionModel(
      nombre: "Market Value",
      texto: Colors.black,
      fondo: Colors.white70,
    ),
    NavegacionModel(
      nombre: "Name",
      texto: Colors.black,
      fondo: Colors.white70,     
    ),
  ];  

  List<PortafolioModel> portafolioList = [
    PortafolioModel(
      icono: Icons.monetization_on_outlined,
      moneda: 'USD',
      nombre: 'US Dollar',
      monto: '\$98,565',
      cambio: 'BNB 0.447515',
      porcentaje: '+1.82%',
      color: Colors.blue,
    ),
    PortafolioModel(
      icono: Icons.currency_bitcoin_sharp,
      moneda: 'BNB/USD',
      nombre: 'Binance Coin',
      monto: '\$45,589',
      cambio: 'ETH 0.87945',
      porcentaje: '+2.70%',
      color: Colors.yellow,
    ),
    PortafolioModel(
      icono: Icons.euro_sharp,
      moneda: 'ETH/USD',
      nombre: 'Etherium',
      monto: '\$60,235',
      cambio: 'BNB 0.45265',
      porcentaje: '+6.82%',
      color: Colors.blue,
    ),
    PortafolioModel(
      icono: Icons.monetization_on_outlined,
      moneda: 'USD',
      nombre: 'US Dollar',
      monto: '\$98,565',
      cambio: 'BNB 0.447515',
      porcentaje: '+1.82%',
      color: Colors.blue,
    ),    
    PortafolioModel(
      icono: Icons.euro_sharp,
      moneda: 'ETH/USD',
      nombre: 'Etherium',
      monto: '\$60,235',
      cambio: 'BNB 0.45265',
      porcentaje: '+6.82%',
      color: Colors.blue,
    ),
    PortafolioModel(
      icono: Icons.monetization_on_outlined,
      moneda: 'USD',
      nombre: 'US Dollar',
      monto: '\$98,565',
      cambio: 'BNB 0.447515',
      porcentaje: '+1.82%',
      color: Colors.blue,
    ),      
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: const Text(
          "Have you invested today?",
          style: textoBar,
        ),
        actions: const [ 
          Padding( 
            padding: EdgeInsets.only( 
              left: 10, 
              right: 10, 
            ), 
            child: Icon( 
              Icons.money_sharp, 
              color: colorIconAppBar, 
            ), 
          ), 
        ],
      ),

      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Balance(),
                const SizedBox(height: 16),
                Portafolio(portafolioList: portafolioList),
                const SizedBox(height: 16),
                Navegacion(navegacionList: navegacionList),       
              ],
            ),
          ),
          Expanded(
            child: Padding(padding: const EdgeInsets.fromLTRB(10, 0, 10, 8),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                      ListaPortafolio(portafolioList: portafolioList),
                  ]
                ),
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active_outlined),
            label: 'Alert',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Person',
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
      ),

    );
  }
}

class Balance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(16),
          ),
      child: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Your current balance',
                  style: textoBalanceTitulo,
                ),
                Icon(Icons.security_rounded, color: colorElemento),
              ],
            ),
            SizedBox(height: 8),
            Text(
              '\$235,554',
              style: textoBalanceDinero,
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.upload_sharp, color: colorElemento),
                    SizedBox(height: 4),
                    Text('Deposit', style: textoBalanceOption),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.download_sharp, color: colorElemento),
                    SizedBox(height: 4),
                    Text('Withdraw', style: textoBalanceOption),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.refresh_sharp, color: colorElemento),
                    SizedBox(height: 4),
                    Text('History', style: textoBalanceOption),
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

class Portafolio extends StatelessWidget {

  final List<PortafolioModel> portafolioList;

  Portafolio({required this.portafolioList});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('My Portfolio', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text('See all', style: TextStyle(color: Colors.blue)),
          ],
        ),
        const SizedBox(height: 8),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...portafolioList.map(
                (e) => PortafolioWidget(
                  icono: e.icono,
                  moneda: e.moneda,
                  nombre: e.nombre,
                  monto: e.monto,
                  cambio: e.cambio,
                  porcentaje: e.porcentaje,
                  color: e.color,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Navegacion extends StatelessWidget {

  final List<NavegacionModel> navegacionList;

  Navegacion({required this.navegacionList});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            Text('Trade Crypto', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ],
        ),
        const SizedBox(height: 8),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...navegacionList.map(
                (e) => NavegacionWidget(
                  nombre: e.nombre,
                  texto: e.texto,
                  fondo: e.fondo,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ListaPortafolio extends StatelessWidget {

  final List<PortafolioModel> portafolioList;

  ListaPortafolio({required this.portafolioList});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              ...portafolioList.map(
                (e) => ListaPortafolioWidget(
                  icono: e.icono,
                  moneda: e.moneda,
                  nombre: e.nombre,
                  monto: e.monto,
                  cambio: e.cambio,
                  porcentaje: e.porcentaje,
                  color: e.color,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}