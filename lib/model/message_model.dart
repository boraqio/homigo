import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> saveMessage() async {
  final CollectionReference ref = FirebaseFirestore.instance.collection('messages');

  for (final Message message in messages) {
    final String id = DateTime.now().toIso8601String() + Random().nextInt(1000).toString();
    ref.doc("das");
    await ref.doc(id).set(message.toMap());
  }
}


class Message {
  final String image;
  final String vendorImage;
  final String name;
  final String date;
  final String description;
  final String duration;

  Message({
    required this.image,
    required this.vendorImage,
    required this.name,
    required this.date,
    required this.description,
    required this.duration,
  });

  Map<String, dynamic> toMap() {
    return {
      'image': image,
      'vendorImage': vendorImage,
      'name': name,
      'date': date,
      'description': description,
      'duration': duration,
    };
  }
}

final List<Message> messages = [
  Message(
    image: 'https://images.unsplash.com/photo-1600585154340-be6161a56a0c?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    vendorImage: 'https://images.unsplash.com/photo-1544723795-3fb6469f5b39?q=80&w=1978&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    name: 'Burger King',
    date: '6/12/2020',
    description: 'You: Homigo update: Reservations are now available for the month of June. Book now!',
    duration: 'Oct 15-17, 2020 Stockholm, Sweden',
  ),
  Message(
    image: 'https://images.unsplash.com/photo-1600585154340-be6161a56a0c?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    vendorImage: 'https://images.unsplash.com/photo-1544723795-3fb6469f5b39?q=80&w=1978&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    name: 'Nicolai',
    date: '11/12/2020',
    description: 'Homigo update: Reminder: Your item is due for return today. Please return it to the vendor.',
    duration: 'Feb 15-17, 2021 Stockholm, Sweden',
  ),
  Message(
    image: 'https://images.unsplash.com/photo-1600585154340-be6161a56a0c?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    vendorImage: 'https://images.unsplash.com/photo-1544723795-3fb6469f5b39?q=80&w=1978&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    name: 'Burger King',
    date: '6/12/2020',
    description: 'You: Homigo update: Reservations are now available for the month of June. Book now!',
    duration: 'Oct 15-17, 2020 Stockholm, Sweden',
  ),
  Message(
    image: 'https://images.unsplash.com/photo-1600585154340-be6161a56a0c?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    vendorImage: 'https://images.unsplash.com/photo-1544723795-3fb6469f5b39?q=80&w=1978&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    name: 'Nicolai',
    date: '11/12/2020',
    description: 'Homigo update: Reminder: Your item is due for return today. Please return it to the vendor.',
    duration: 'Feb 15-17, 2021 Stockholm, Sweden',
  ),
];