import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final databaseProvider = Provider((ref) => Database());

class Database {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  Stream get allBooks => _db.collection("collectionPath").snapshots();
}
