import 'package:flutter/material.dart';
import 'package:yucom/models/presenters_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SearchPage(),
    );
  }
}

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  static List<PresentersModel> main_presenters_list = [
    PresentersModel(
        "Taco de Ojo",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        "https://yt3.ggpht.com/ytc/AMLnZu9mPR2BTikLV7V9T9l6yST1Gy4-mXPdWtZOY7Ew=s900-c-k-c0x00ffffff-no-rj"),
    PresentersModel(
        "Bruja Cuchi Cuchi",
        "Lorem a ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        "https://i0.wp.com/www.hazruido.mx/wp-content/uploads/2019/08/bruja-3.jpg?fit=1200%2C978&ssl=1"),
    PresentersModel(
        "Cuxum",
        "Lorem a ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        "https://topyucatan.com/storage/uploads/2-1637777286.jpeg"),
    PresentersModel(
        "Cuxum",
        "Lorem a ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        "https://topyucatan.com/storage/uploads/2-1637777286.jpeg"),
    PresentersModel(
        "Cuxum",
        "Lorem a ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        "https://topyucatan.com/storage/uploads/2-1637777286.jpeg"),
    PresentersModel(
        "Cuxum",
        "Lorem a ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        "https://topyucatan.com/storage/uploads/2-1637777286.jpeg"),
    PresentersModel(
        "Cuxum",
        "Lorem a ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        "https://topyucatan.com/storage/uploads/2-1637777286.jpeg"),
    PresentersModel(
        "Cuxum",
        "Lorem a ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        "https://topyucatan.com/storage/uploads/2-1637777286.jpeg"),
    PresentersModel(
        "Cuxum",
        "Lorem a ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        "https://topyucatan.com/storage/uploads/2-1637777286.jpeg"),
    PresentersModel(
        "Cuxum",
        "Lorem a ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        "https://topyucatan.com/storage/uploads/2-1637777286.jpeg"),
    PresentersModel(
        "Cuxum",
        "Lorem a ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        "https://topyucatan.com/storage/uploads/2-1637777286.jpeg"),
  ];

  // Listas y filtros que se mostraran
  List<PresentersModel> display_list = List.from(main_presenters_list);

  void updateList(String value) {
    // Funcion para el filtrado de la lista.
    setState(() {
      display_list = main_presenters_list
          .where((element) => element.presenters_name!
              .toLowerCase()
              .contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 0, 0),
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "BUSQUEDA",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                onChanged: (value) => updateList(value),
                style: TextStyle(color: Colors.black54),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.black12,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(27.0),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Ingresa tu busqueda",
                  prefixIcon: Icon(Icons.mic),
                  suffixIcon: Icon(Icons.search),
                ),
              ),
              Text(
                "RESULTADOS",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    height: 2.0),
              ),
              SizedBox(
                height: 17.0,
              ),
              // Funcion en caso de no encontrar coincidencias
              Expanded(
                child: display_list.length == 0
                    ? Center(
                        child: Text(
                          "Sin coincidencias",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    : ListView.builder(
                        itemCount: display_list.length,
                        itemBuilder: (context, index) => ListTile(
                          contentPadding: EdgeInsets.all(7.0),
                          title: Text(
                            display_list[index].presenters_name!,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            '${display_list[index].presenters_info!}',
                            style: TextStyle(color: Colors.black54),
                          ),
                          leading: Image.network(
                            display_list[index].presenters_poster_url!,
                            height: 77,
                            width: 77,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
              ),
            ]),
      ),
    );
  }
}
