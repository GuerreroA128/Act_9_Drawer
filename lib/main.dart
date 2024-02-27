import 'package:flutter/material.dart';

void main() => runApp(const MiDrawerGuerrero());

class MiDrawerGuerrero extends StatelessWidget {
  const MiDrawerGuerrero({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var listTile = ListTile(
        leading: Icon(Icons.home),
        title: Text("listile 1", textScaleFactor: 1.5),
        onTap: () {
          Navigator.pop(context);
        });
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff234b92),
          title: const Text("Mi Drawer Guerrero"),
        ),
        backgroundColor: Color(0xFF42A5F5),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("ACT 9 Drawer"),
                accountEmail: Text("a.21308051280366@cbtis128.edu.mx"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://raw.githubusercontent.com/GuerreroA128/img_iOS/main/persona.jpg"),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://raw.githubusercontent.com/GuerreroA128/img_iOS/main/ml2.jpg",
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://raw.githubusercontent.com/GuerreroA128/img_iOS/main/persona2.png"),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://raw.githubusercontent.com/GuerreroA128/img_iOS/main/persona3.jpeg"),
                  ),
                ],
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Inicio"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.shopping_bag),
                title: Text("Productos"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.verified_user_outlined),
                title: Text("Cuenta"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.money),
                title: Text("Prestamos"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text("Soporte Tecnico"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Configuracion"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Salir"),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  } //witget
} //miDrawerGuerrero
