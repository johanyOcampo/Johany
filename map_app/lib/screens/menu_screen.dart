import 'package:flutter/material.dart';
import 'package:map_flutter/screens/map_screen.dart';
import 'package:map_flutter/screens/foto_screen.dart';


class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Fotos y Ubicacion',
          style: TextStyle(color: Colors.orange, fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: ListView(
        children: [
           ListTile(
            title: const Text('Hagase una Foto'),
            subtitle: const Text('Tomar foto'),
            leading: const Icon(Icons.camera_alt_outlined, color: Colors.orange),
            trailing: const Icon(Icons.arrow_forward_ios, color: Colors.orange),
            onTap: () {
              final route = MaterialPageRoute(
                builder: (context) => const RegistrarProyecto() );
              Navigator.push(context, route);
            }
          ),
          ListTile(
            title: const Text('Ubicacion Actual'),
            subtitle: const Text('Formulario para agregar participantes al evento'),
            leading: const Icon(Icons.map_outlined, color: Colors.orange),
            trailing: const Icon(Icons.arrow_forward_ios, color: Colors.orange),
            onTap: (){
              final route = MaterialPageRoute(
                builder: (context) => const MapScreen());
              Navigator.push(context, route);
            },
          ),
           
        ],
      ),
      bottomNavigationBar: Container(
          padding: const EdgeInsets.all(10),
          color: Colors.orange[200],
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Desarrollado por: Johany Ocampo Vargas',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        )
    );
  }
}
