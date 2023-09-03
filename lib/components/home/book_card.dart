import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  const BookCard({
    super.key,
    required this.image,
    required this.author,
    required this.bookName,
  });

  final String image;
  final String author;
  final String bookName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 250,
            child: CachedNetworkImage(
              imageUrl: image,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Text(
              bookName,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(child: Text(author)),
        ],
      ),
    );
  }
}
