import 'package:flutter/material.dart';

void main() => runApp(const PlaceholderDemo());

class PlaceholderDemo extends StatelessWidget {
  const PlaceholderDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Placeholder Demo')),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: const [
            // Demo 1: defaults. Fills the space its parent gives it.
            Text('1. Default Placeholder'),
            SizedBox(height: 120, child: Placeholder()),
            SizedBox(height: 24),

            // Demo 2: attribute 1, color
            Text('2. color'),
            SizedBox(
              height: 120,
              child: Placeholder(color: Colors.teal),
            ),
            SizedBox(height: 24),

            // Demo 3: attribute 2, strokeWidth
            Text('3. strokeWidth'),
            SizedBox(
              height: 120,
              child: Placeholder(strokeWidth: 6),
            ),
            SizedBox(height: 24),

            // Demo 4: attribute 3, fallbackHeight.
            // No SizedBox here. ListView gives unlimited height,
            // so Placeholder uses fallbackHeight.
            Text('4. fallbackHeight'),
            Placeholder(fallbackHeight: 100),
            SizedBox(height: 24),

            // Demo 5: real-world use case, a news card layout
            Text('5. Real use case: news card mock layout'),
            SizedBox(height: 8),
            Placeholder(fallbackHeight: 160),
            SizedBox(height: 8),
            Row(
              children: [
                Placeholder(fallbackWidth: 60, fallbackHeight: 60),
                SizedBox(width: 12),
                Expanded(child: Placeholder(fallbackHeight: 60)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}