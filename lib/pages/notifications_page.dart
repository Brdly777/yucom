import 'package:flutter/material.dart';

class notificationsPage extends StatefulWidget {
  const notificationsPage({super.key});

  @override
  State<notificationsPage> createState() => _notificationsPageState();
}

class _notificationsPageState extends State<notificationsPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffffffff),
        endDrawer: const Drawer(),
        appBar: AppBar(
          leading: BackButton(
            color: Colors.black54,
          ),
          title: const Text('NOTIFICACIONES',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              )),
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          elevation: 0.0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView(
            children: <Widget>[
              Row(
                children: [
                  Text(
                    "PARA TI",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        height: 2.0),
                  ),
                  Spacer(),
                  Text(
                    "MARCAR COMO LEIDO",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 17.0,
                        fontWeight: FontWeight.normal,
                        height: 2.0),
                  ),
                ],
              ),
              ListTile(
                trailing: Icon(
                  Icons.clear,
                  color: Colors.black87,
                ),
                title: Text(
                  "En tendencia",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  children: [
                    Text(
                      "Platanito Show en Mérida, que esperas para hacer tu reservación? que se va como pan caliente!",
                      style: TextStyle(color: Colors.black54),
                    ),
                    Text(
                      "27 Dic.",
                      style: TextStyle(color: Colors.black38),
                      textAlign: TextAlign.left,
                    )
                  ],
                ),
                leading: Image(
                  image: NetworkImage(
                      "https://i.scdn.co/image/ab67706c0000da841e3a72a9aa6180cce4a570bb"),
                  height: 77,
                  width: 77,
                  fit: BoxFit.fill,
                ),
              ),
              ListTile(
                trailing: Icon(
                  Icons.clear,
                  color: Colors.black87,
                ),
                title: Text(
                  "Lo más buscado",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  children: [
                    Text(
                      "Platanito Show en Mérida, que esperas para hacer tu reservación? que se va como pan caliente!",
                      style: TextStyle(color: Colors.black54),
                    ),
                    Text(
                      "02 Dic.",
                      style: TextStyle(color: Colors.black38),
                      textAlign: TextAlign.left,
                    )
                  ],
                ),
                leading: Image(
                  image: NetworkImage(
                      "https://www.elsoldepuebla.com.mx/gossip/omg/t95tos-fue-hace-unos-dias-que-las-redes-sociales-convirtieron-en-tendencia-al-comediante-platanito-show.jpg/ALTERNATES/LANDSCAPE_768/Fue%20hace%20unos%20d%C3%ADas%20que%20las%20redes%20sociales%20convirtieron%20en%20tendencia%20al%20comediante%20'Platanito%20Show'.jpg"),
                  height: 77,
                  width: 77,
                  fit: BoxFit.fill,
                ),
              ),
              ListTile(
                trailing: Icon(
                  Icons.clear,
                  color: Colors.black87,
                ),
                title: Text(
                  "Novedad de Cuxum",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  children: [
                    Text(
                      "Platanito Show en Mérida, que esperas para hacer tu reservación? que se va como pan caliente!",
                      style: TextStyle(color: Colors.black54),
                    ),
                    Text(
                      "10 Dic.",
                      style: TextStyle(color: Colors.black38),
                      textAlign: TextAlign.left,
                    )
                  ],
                ),
                leading: Image(
                  image: NetworkImage(
                      "https://grillodeyucatan.com/wp-content/uploads/2021/08/cuxum-2.jpeg"),
                  height: 77,
                  width: 77,
                  fit: BoxFit.fill,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
