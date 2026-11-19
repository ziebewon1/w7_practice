// EX 2 – The best cards (handout page: EX 2). Start code for Part 1.
// Try Part 1 yourself first, then compare with ex2_part1_correction.dart.

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Text("Favorite cards"),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: const [
                FavoriteCard(title: "title", description: "description"),
                FavoriteCard(title: "title", description: "description"),
                FavoriteCard(title: "title", description: "description"),
              ],
            ),
          ),
        ),
      ),
    );

class FavoriteCard extends StatefulWidget {
  final String title;
  final String description;
  final IconData icon;

  const FavoriteCard({
    super.key,
    required this.title,
    required this.description,
    this.icon = Icons.favorite,
  });

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.blue),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,   // shrink-wrap vertically
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(fontSize: 20, color: Colors.blueAccent),
                ),
                const SizedBox(height: 20),
                Text(widget.description),
              ],
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
            icon: Icon(
              widget.icon,                    // use the widget's icon
              color: isFavorite ? Colors.red : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}