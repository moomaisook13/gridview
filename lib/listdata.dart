import 'package:flutter/material.dart';
import 'package:listdatademo/book.dart';

class ListData extends StatefulWidget {
  const ListData({Key? key});

  @override
  State<ListData> createState() => _ListDataState();
}

class _ListDataState extends State<ListData> {
  List<Book> books = [
    Book(
      
      name: 'Flutter is easy',
      author: 'Pattaraporn',
      cover: 'assets/images/python.jpg',
    ),
    Book(
      author: 'Micheal',
      name: 'HTML and CSS',
      cover: 'assets/images/python.jpg',
      
    ),
    Book(
      name: 'Data Science',
      author: 'Somchai',
      cover: 'assets/images/python.jpg',
    ),
    Book(
      name: 'React Native',
      author: 'Peter',
      cover: 'assets/images/python.jpg',
      
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Data'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // จำนวนคอลัมน์ใน GridView
          mainAxisSpacing: 16.0, // ระยะห่างระหว่างรายการในแนวด้านหลัก
          crossAxisSpacing: 16.0, // ระยะห่างระหว่างรายการในแนวด้านแนวนอน
        ),
        itemCount: books.length, // จำนวนรายการทั้งหมดใน GridView
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 4.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Image.asset(
                   
                     books[index].cover,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    books[index].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Author: ${books[index].author}'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
