import 'package:flutter/material.dart';

void main() {
  runApp(const PizzaStoreApp());
}

class PizzaStoreApp extends StatelessWidget {
  const PizzaStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pizza Store',
      initialRoute: 'menu',
      // Requirement 1: 4 named routes
      routes: {
        'menu': (context) => const MenuScreen(),
        'vegetable': (context) => const DetailScreen(
              title: 'Vegetable Pizza',
              imagePath: 'assets/images/vegetable.png',
              description: 'Healthy pizza topped with fresh vegetables.',
            ),
        'cheese': (context) => const DetailScreen(
              title: 'Cheese Pizza',
              imagePath: 'assets/images/cheese.png',
              description: 'Classic pizza with a blend of melted cheeses.',
            ),
        'fries': (context) => const DetailScreen(
              title: 'Box of Fries',
              imagePath: 'assets/images/fries.png',
              description: 'Crispy golden fries served hot.',
            ),
      },
    );
  }
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pizza Store Menu')),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          // Requirement 2: Three orange cards with pushNamed
          Card(
            color: Colors.orange,
            child: ListTile(
              title: const Text('Vegetable Pizza'),
              onTap: () => Navigator.pushNamed(context, 'vegetable'),
            ),
          ),
          Card(
            color: Colors.orange,
            child: ListTile(
              title: const Text('Cheese Pizza'),
              onTap: () => Navigator.pushNamed(context, 'cheese'),
            ),
          ),
          Card(
            color: Colors.orange,
            child: ListTile(
              title: const Text('Box of Fries'),
              onTap: () => Navigator.pushNamed(context, 'fries'),
            ),
          ),
        ],
      ),
    );
  }
}

// Requirement 3: Detail Screens displaying name, image, and description
class DetailScreen extends StatelessWidget {
  final String title;
  final String imagePath;
  final String description;

  const DetailScreen({
    super.key,
    required this.title,
    required this.imagePath,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath, 
              height: 150,
              errorBuilder: (context, error, stackTrace) => const Icon(Icons.fastfood, size: 100),
            ),
            const SizedBox(height: 16),
            Text(title, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            Text(description, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}