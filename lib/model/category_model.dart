import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> saveCategory() async {
  final CollectionReference ref = FirebaseFirestore.instance.collection('categories');

  for (final Category category in categories) {
    final String id = DateTime.now().toIso8601String() + Random().nextInt(1000).toString();
    ref.doc("das");
    await ref.doc(id).set(category.toMap());
  }
}

class Category {
  final String title;
  final String image;

  Category({
    required this.title,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'image': image,
    };
  }
}

final List<Category> categories = [
  Category(
    title: "Icons",
    image: "https://cdn-icons-png.flaticon.com/512/734/734315.png",
  ),
  Category(
    title: "Surfing",
    image: "https://static.thenounproject.com/png/384446-200.png",
  ),
  Category(
    title: "Design",
    image: "https://cdn-icons-png.freepik.com/512/48/48781.png",
  ),
  Category(
    title: "Amazing views",
    image: "https://static.thenounproject.com/png/5027454-200.png",
  ),
];