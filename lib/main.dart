import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicativo de Viagem',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
      routes: {
        '/page1': (context) => Page1(),
        '/page2': (context) => Page2(),
        '/page3': (context) => Page3(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sejam Bem-vindos!'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Casa Branca'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/page1');
              },
            ),
            ListTile(
              title: Text('Peru'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/page2');
              },
            ),
            ListTile(
              title: Text('China'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/page3');
              },
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Logotipo na parte superior
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Image.asset(
              'images/alarcon-flutter.png', // Substitua pelo caminho do seu logotipo
              height: 200,
              width: 200,
            ),
          ),
          // Parágrafo explicativo
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'A nossa agência de viagens, chamada Alarcon Viagens, é uma porta de entrada para aventuras inesquecíveis.'
              ' O que nos diferencia é a nossa paixão por criar roteiros personalizados que vão além do convencional.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Image.asset(
              'images/alarcon-flutter.png', // Substitua pelo caminho do seu logotipo
              height: 100,
              width: 100,
            ),
          ),
          SizedBox(height: 40), // Espaçamento entre o parágrafo e as informações de contato
          // Informações de contato no rodapé
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.phone),
                    SizedBox(width: 10),
                    Text(
                      '+55 99105-1555', // Seu número de telefone
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.email),
                    SizedBox(width: 10),
                    Text(
                      'alarcon@outlook.com', // Seu endereço de e-mail
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Imagem superior responsiva
          Image.asset(

          'images/lake.jpg',

          width: 600,

          height: 240,

          fit: BoxFit.cover,

        ),
          // Texto abaixo da imagem
          Padding(
            padding: const EdgeInsets.all(19.0),
            child: Text(
              'A Casa Branca (tradução literal do inglês: White House) é a residência oficial e principal local de trabalho do Presidente dos Estados Unidos, sendo, ao mesmo tempo, a sede oficial do poder executivo naquele país. Localiza-se na Avenida Pensilvânia, nº 1 600 em Washington D.C.'
              ,
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16),
              
            ),
          ),
          // Ícone de like com numeração
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.favorite, color: Colors.red),
              SizedBox(width: 5),
              Text(
                '110',
                style: TextStyle(fontSize: 22),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(19.0),
            child: Text(
              '"Maria Rosário: "Local muito bem preservado',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 14),
              
            ),
          ),
          
        ]
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('Europa'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Asia'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('América do Sul'),
            ),
          ],
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Peru'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Imagem superior responsiva
          Image.asset(

          'images/peru.jpg',

          width: 600,

          height: 240,

          fit: BoxFit.cover,

        ),
          // Texto abaixo da imagem
          Padding(
            padding: const EdgeInsets.all(19.0),
            child: Text(
              'O Peru é um dos países mais diversificados do mundo. Um país multicultural, cheio de tradições, com uma laureada gastronomia e vastas reservas naturais. Possui 12 patrimônios mundiais reconhecidos pela Unesco e é dono de 84 dos 117 ecossistemas do mundo.'
              ,
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16),
              
            ),
          ),
          // Ícone de like com numeração
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.favorite, color: Colors.red),
              SizedBox(width: 5),
              Text(
                '59',
                style: TextStyle(fontSize: 22),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(19.0),
            child: Text(
              '"Elaine Brito: "Viagem Maravilhosa',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 14),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(19.0),
            child: Text(
              '"Alex Oliveira: "Voltarei com certeza',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 14),
            ),
          ),
        ]
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('América do Sul'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Ásia'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Oceania'),
            ),
          ],
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('China'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Imagem superior responsiva
          Image.asset(

          'images/china.jpg',

          width: 600,

          height: 240,

          fit: BoxFit.cover,

        ),
          // Texto abaixo da imagem
          Padding(
            padding: const EdgeInsets.all(19.0),
            child: Text(
              'A China é um país localizado no continente asiático, especificamente na Ásia Oriental. É oficialmente chamada República Popular da China e é considerada uma das mais antigas civilizações do mundo. O país é o terceiro maior do mundo quando o assunto é extensão territorial (área terrestre) e também o mais populoso..'
              ,
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16),
              
            ),
          ),
          // Ícone de like com numeração
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.favorite, color: Colors.red),
              SizedBox(width: 5),
              Text(
                '70',
                style: TextStyle(fontSize: 22),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(19.0),
            child: Text(
              '"Jean Silva: "Cultura Fascinante',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 14),
              
            ),
          ),
          
        ]
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('Europa'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Asia'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('América do Sul'),
            ),
          ],
        ),
      ),
    );
  }
}