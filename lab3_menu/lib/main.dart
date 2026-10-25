import 'package:flutter/material.dart';

void main() {
  runApp(const MenuApp()); 
}

class MenuApp extends StatelessWidget {
  const MenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Custom Coffee Menu'),
          backgroundColor: Colors.brown[300],
        ),
        body: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            // --- MENU ITEM 1: ESPRESSO ---
            Card(
              elevation: 4,
              margin: const EdgeInsets.only(bottom: 16.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      // Real image of an Espresso from Unsplash
                      child: Image.network(
                        'https://images.unsplash.com/photo-1511920170033-f8396924c348?w=100&auto=format&fit=crop&q=60', 
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 16),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Espresso',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(Icons.local_cafe, color: Colors.brown),
                              SizedBox(width: 8),
                              Text('\$3.00', style: TextStyle(fontSize: 16, color: Colors.grey)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
            // --- MENU ITEM 2: LATTE ---
            Card(
              elevation: 4,
              margin: const EdgeInsets.only(bottom: 16.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      // Real image of a Latte from Unsplash
                      child: Image.network(
                        'https://images.unsplash.com/photo-1572442388796-11668a67e53d?w=100&auto=format&fit=crop&q=60', 
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 16),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Latte',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(Icons.local_cafe, color: Colors.brown),
                              SizedBox(width: 8),
                              Text('\$4.50', style: TextStyle(fontSize: 16, color: Colors.grey)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}