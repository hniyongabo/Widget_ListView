import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('ListView Demo')),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Padding(
              padding: EdgeInsets.all(12),
              child: Text('Icons', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),

            // HORIZONTAL ListView — Flutter built-in icons in circles
            SizedBox(
              height: 70,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Icons.home,
                  Icons.star,
                  Icons.favorite,
                  Icons.notifications,
                  Icons.settings,
                  Icons.search,
                  Icons.person,
                  Icons.camera_alt,
                ].map((icon) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  width: 55,
                  height: 55,
                  decoration: const BoxDecoration(
                    color: Colors.teal,
                    shape: BoxShape.circle,  // perfect circle
                  ),
                  child: Icon(icon, color: Colors.white),
                )).toList(),
              ),
            ),

            

            // VERTICAL ListView — UCL top 10 teams 
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical:8),
                children: [
                  const Padding(
                    padding: EdgeInsets.all(12),
                    child: Text('UCL Top 10 Teams', 
                    style: TextStyle(
                      fontSize: 18, 
                      fontWeight: FontWeight.bold)),
                  ),
                  'Paris Saint Germain',
                  'Arsenal',
                  'Bayern Munich',
                  'Atlético Madrid',
                  'Real Madrid',
                  'Liverpool',
                  'Sporting CP',
                  'Fc Barcelona',
                  'FK Bodø/Glimt',
                  'Tottenham Hotspur',
                ].map((item) {
                  if (item is String) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                      child: Text(item, style: const TextStyle(fontSize: 16)),
                    );
                  }
                  return item as Widget;
                }).toList(),
              ),
            ),

          ],
        ),
      ),
    );
  }
}