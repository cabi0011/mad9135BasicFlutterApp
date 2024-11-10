import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Images and Assets',
      theme: ThemeData(
        fontFamily: 'Raleway',
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Images and Assets'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Image.network('https://placedog.net/933'),
                  const SizedBox(width: 10),
                  Image.network('https://placedog.net/507'),
                  const SizedBox(width: 10),
                  Image.network('https://placedog.net/911'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const ListTile(
              leading: Icon(Icons.star),
              title: Text('Raleway',
                  style: TextStyle(fontFamily: 'Raleway', fontSize: 24)),
            ),
            const ListTile(
              leading: Icon(Icons.star),
              title: Text('Raleway Bold',
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,
                      fontSize: 22)),
            ),
            const ListTile(
              leading: Icon(Icons.star),
              title: Text('Raleway Italic',
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontStyle: FontStyle.italic,
                      fontSize: 20)),
            ),
            const ListTile(
              leading: Icon(Icons.star),
              title: Text('Raleway Thin',
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w100,
                      fontSize: 18)),
            ),
            const ListTile(
              leading: Icon(Icons.star),
              title: Text('Roboto',
                  style: TextStyle(
                      fontFamily: 'Roboto', // Default system font
                      fontSize: 16)),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Image.asset('assets/dog_image1.jpg'),
                  const SizedBox(width: 10),
                  Image.asset('assets/dog_image2.jpg'),
                  const SizedBox(width: 10),
                  Image.asset('assets/dog_image3.jpg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
