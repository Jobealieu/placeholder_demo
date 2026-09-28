import 'package:flutter/material.dart';

void main() => runApp(const PlaceholderDemo());
/// Demo app for Flutter's Placeholder widget.
/// It shows three attributes: color, strokeWidth and fallbackHeight,
/// then a mock news card as a real world use case.
class PlaceholderDemo extends StatelessWidget {
  const PlaceholderDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Placeholder Widget Demo')),
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
            // There is no SizedBox here, so the ListView gives unlimited height.
            // A Placeholder cannot fill unlimited space, so it uses fallbackHeight.
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