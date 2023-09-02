import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  const BookCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 3,
            blurRadius: 6,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 200,
            child: CachedNetworkImage(
              imageUrl: "https://m.media-amazon.com/images/I/81FU4zAWJvL.jpg",
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "Hooked",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text("Nir Eyal"),
        ],
      ),
    );
  }
}
