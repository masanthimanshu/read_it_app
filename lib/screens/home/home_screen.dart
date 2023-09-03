import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:read_it/components/home/book_card.dart';
import 'package:read_it/screens/content/content_screen.dart';
import 'package:read_it/screens/notification/notification_screen.dart';
import 'package:read_it/screens/search/search_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final FirebaseFirestore db = FirebaseFirestore.instance;

  List<Map<String, dynamic>> _data = [];

  _getData() async {
    final querySnapshot = await db.collection("books").get();
    final allData = querySnapshot.docs.map((doc) => doc.data()).toList();

    setState(() {
      _data = allData;
    });
  }

  @override
  void initState() {
    super.initState();

    _getData();
  }

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
        itemCount: _data.length,
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
            child: BookCard(
              author: _data[index]["author"],
              image: _data[index]["previewImg"],
              bookName: _data[index]["bookName"],
            ),
          );
        },
      ),
    );
  }
}
