import 'package:flutter/material.dart';
import 'package:yucom/pages/search_page.dart';
import 'package:yucom/statemanager/cardsprincipal.dart';
import 'package:yucom/statemanager/carrusel_imagen.dart';
import 'notifications_page.dart';

class HomePrincipal extends StatefulWidget {
  const HomePrincipal({super.key});

  @override
  State<HomePrincipal> createState() => _HomePrincipalState();
}

class _HomePrincipalState extends State<HomePrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Color.fromARGB(255, 255, 17, 0)),
              child: Text('Yucom'),
            ),
            ListTile(
              title: const Text('Buscar'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SearchPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Notificaciones'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => notificationsPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black87),
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
              onPressed: null, icon: Image.asset('images/logo.png', scale: 15));
        }),
        title: const Text(
          'Yucom',
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            letterSpacing: 3,
            fontSize: 20,
          ),
        ),
        actions: [
          Padding(padding: EdgeInsets.all(20.0)),
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchPage()),
                );
              },
              icon: Icon(Icons.search, color: Colors.black, size: 30)),
        ],
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(0, 15, 0, 18),
            child: const Carrusel_Imagen(),
          ),
          const Text('Destacados',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  letterSpacing: 2)),
          const ListaImagen(),
          const Padding(padding: EdgeInsets.all(12)),
          const Text('Eventos proximos',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  letterSpacing: 2)),
          const ListaImagen(),
          const Padding(padding: EdgeInsets.all(12)),
          const Text('Populares',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  letterSpacing: 2)),
          const ListaImagen(),
        ],
      ),
    );
  }
}

class ListaImagen extends StatelessWidget {
  const ListaImagen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(5.0), child: const CardsPrincipal());
  }
}
