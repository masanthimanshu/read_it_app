import 'package:flutter/material.dart';
import 'package:read_it/components/home/book_card.dart';
import 'package:read_it/screens/content/content_screen.dart';
import 'package:read_it/screens/notification/notification_screen.dart';
import 'package:read_it/screens/search/search_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Read It"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const NotificationScreen(),
                ),
              );
            },
            icon: const Icon(Icons.notifications),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const SearchScreen(),
                ),
              );
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: GridView.builder(
        itemCount: 10,
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 350,
        ),
        itemBuilder: (e, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const ContentScreen(),
                ),
              );
            },
            child: const BookCard(),
          );
        },
      ),
    );
  }
}
