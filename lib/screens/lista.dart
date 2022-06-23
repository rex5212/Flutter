import "package:flutter/material.dart";
export 'lista.dart';

class Lista extends StatelessWidget {
  Lista({Key? key}) : super(key: key);

  final List lista = List.generate(5, (index) {
    return {
      "id": index,
      "title": "Filme",
      "subtitle": "produzido por ... \n disponivel nas plataformas \n ....",
    };
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text('View', style: TextStyle(color: Colors.red)),
        actions: [
          IconButton(
              icon: const Icon(Icons.exit_to_app),
              onPressed: () => {
                    Navigator.pushReplacementNamed(context, "/")
                  }),
        ],
      ),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) => index < 5
              ? Card(
                  elevation: 6,
                  margin: EdgeInsets.all(16),
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text(lista[index]['id'].toString()),
                      backgroundColor: Colors.blue,
                    ),
                    title: Text(lista[index]["title"]),
                    subtitle: Text(lista[index]['subtitle']),
                    trailing: Icon(
                      Icons.local_movies_outlined,
                      color: Colors.red,
                    ),
                  ),
                )
              : Card(
                  elevation: 6,
                  margin: EdgeInsets.all(16),
                  child: ListTile(
                    title: Text('Procurando filmes disponiveis...'),
                    subtitle: Text('...'),
                  ),
                ),
        ),
      ),
    );
  }
}
