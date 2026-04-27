import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuración'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 148, 2, 116),
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          SwitchListTile(
            title: const Text('Notificaciones'),
            secondary: const Icon(
              Icons.notifications,
              color: const Color.fromARGB(255, 148, 2, 116),
            ),
            value: true,
            onChanged: (value) {},
          ),
          SwitchListTile(
            title: const Text('Modo Oscuro'),
            secondary: const Icon(
              Icons.dark_mode,
              color: const Color.fromARGB(255, 148, 2, 116),
            ),
            value: false,
            onChanged: (value) {},
          ),
          const ListTile(
            leading: Icon(
              Icons.language,
              color: const Color.fromARGB(255, 148, 2, 116),
            ),
            title: Text('Idioma'),
            subtitle: Text('Español'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 148, 2, 116),
              foregroundColor: Colors.white,
            ),
            child: const Text('Volver'),
          ),
        ],
      ),
    );
  }
}
