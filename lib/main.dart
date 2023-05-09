import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  backgroundColor: const Color(0xFF00A3FE),
  centerTitle: true,
  toolbarHeight: 70,
  title: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      const SizedBox(width: 16.0), // Ajouter un espace à gauche de l'image
      Image.asset(
        'images/logo_header.png',
        height: 40,
      ),
     const SizedBox(width: 56.0), // Ajouter un espace entre l'image et le champ de recherche
      Expanded(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: TextField(
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                hintText: 'Recherche...',
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
        ),
      ),
      const SizedBox(width: 36.0), // Ajouter un espace entre le champ de recherche et l'icône
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.settings),
        color: Colors.white,
      ),
      const SizedBox(width: 16.0), // Ajouter un espace à droite de l'icône
    ],
  ),
),

      body: Row(
        children: [
          SizedBox(
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20.0, left: 16.0, right: 20.0, bottom: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Image.asset(
                          'images/23.png',
                          height: 90,
                          width: 90,
                        ),
                      ),
                      const Center(
                        child: Text(
                          'Trottle Admin',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          'Menu',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              leading: const Icon(Icons.bar_chart),
                              title: const Text('Statistiques'),
                              onTap: () {},
                            ),
                            ListTile(
                              leading: const Icon(Icons.image,
                                  weight: 24, size: 24),
                              title: const Text('Images'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ImagePage()),
                                );
                              },
                            ),
                            ListTile(
                              leading: const Icon(Icons.person),
                              title: const Text('Utilisateurs'),
                              onTap: () {},
                            ),
                            ListTile(
                              leading: const Icon(Icons.share),
                              title: const Text('Partage'),
                              onTap: () {},
                            ),
                            ListTile(
                              leading: const Icon(Icons.settings),
                              title: const Text('Paramètres'),
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class ImagePage extends StatelessWidget {
  final List<String> imagePaths = [    'images/image1.png',    'images/image2.png',    'images/image3.png',    'images/image4.png',  ];

  ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Images'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(imagePaths.length, (index) {
          return Center(
            child: Image.asset(
              imagePaths[index],
              height: 320,
              width: 320,
            ),
          );
        }),
      ),
    );
  }
}

