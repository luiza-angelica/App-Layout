import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove o banner de debug
      home: Scaffold(
        backgroundColor: Colors.white, // Cor de fundo principal
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Cabeçalho
            Container(
              color: Colors.pink.shade400,
              padding: const EdgeInsets.all(16),
              child: const Text(
                'Programa Layout',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            // Espaçamento entre o cabeçalho e o texto "Layout Superior"
            const SizedBox(height: 16),
            const Text(
              'Layout Superior',
              style: TextStyle(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.center,
            ),

            // Espaço central com o Container azul
            Expanded(
              child: Center(
                child: Container(
                  width: 200,
                  height: 300,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(22, 22),
                      ),
                    ],
                  ),
                  child: const Text(
                    'Meu Aplicativo',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),

            // Espaçamento entre o Container azul e o texto "Layout Inferior"
            const SizedBox(height: 16),
            const Text(
              'Layout Inferior',
              style: TextStyle(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.center,
            ),

            // Rodapé
            Container(
              color: Colors.pink.shade100,
              height: 80,
            ),
          ],
        ),

        // Botão flutuante centralizado na parte inferior
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Ação do botão
          },
          backgroundColor: Colors.pink,
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
