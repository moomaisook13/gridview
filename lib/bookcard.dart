import 'package:flutter/material.dart';
import 'package:listdatademo/book.dart';

class BookCard extends StatelessWidget {
  final Book book;
  final Function delete;
  const BookCard({
    Key? key,
    required this.book,
    required this.delete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AspectRatio(
            aspectRatio: 1.0, // ควบคุมสัดส่วนของรูปภาพ
            child: Image.asset(
              book.cover,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              book.name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(book.author),
          ),
          IconButton(
            onPressed: () {
              delete();
            },
            icon: const Icon(
              Icons.delete_outline,
              size: 24,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
