import 'package:flutter/material.dart';
import 'onibus.dart';
import 'package:url_launcher/url_launcher.dart';

void segpag() {
  runApp(const SegPag());
}

class SegPag extends StatelessWidget {
  const SegPag({super.key});

  Future<void> _launchMap(double latitude, double longitude) async {
    final Uri uri = Uri.parse('https://www.google.com/maps/search/?api=1&query=$latitude,$longitude');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Não foi possível acessar o mapa';
    }
  }

  @override
  Widget build(BuildContext context) {
    // Define a largura máxima das imagens
    double maxWidth = 280.0;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 243, 187, 104),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: onibusList.map((onibus) {
              return Column(
                children: <Widget>[
                  Container(
                    width: maxWidth,
                    height: maxWidth / 1.5,
                    margin: const EdgeInsets.only(top: 60),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFE4B8),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Image.network(
                        onibus.foto,
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              onibus.nome,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Container(
                              width: maxWidth, 
                              height: 60, // tamanho fixo vertical pra descrição n passar o tamanho da tela
                              child: SingleChildScrollView(
                                child: Text(
                                  onibus.descricao,
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                        IconButton(
                          onPressed: () => _launchMap(onibus.latitude, onibus.longitude),
                          icon: const Icon(Icons.place),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              );
            }).toList(),
          ),
        ),
      ),
      backgroundColor: const Color(0xFFFFE4B8),
    );
  }
}
