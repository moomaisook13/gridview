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
      cover: 'https://images.unsplash.com/photo-1544947950-fa07a98d237f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
    ),
    Book(
      author: 'Micheal',
      name: 'HTML and CSS',
      cover: 'https://iotvnaw69daj.i.optimole.com/cb:n2y9~6666f/w:325/h:486/q:mauto/dpr:2.0/f:avif/https://www.codeinwp.com/wp-content/uploads/2021/04/HTML-and-CSS-Duckett-cover.jpg',
      
    ),
    Book(
      name: 'Data Science',
      author: 'Somchai',
      cover: 'https://lh4.googleusercontent.com/E6X6IODHtiTQrNl1-4ir12t4xw-PZKCNsnJPWa2-q3gsStWcjI7gDrT-k3GG7SkA7GqKBV3z8p1DHSHaz9gsI2UTAdsAMXRKx7EAmozrruuB1qblMtC6VJvDHyWnbwXPUvXOHhxkhRWyVE160lKb5ypivvHus6GsRC31hRW4Wo2x4A4ccGEThd84jQ',
    ),
    Book(
      name: 'React Native',
      author: 'Peter',
      cover: 'https://media.springernature.com/full/springer-static/cover-hires/book/978-1-4842-3939-1?as=webp',
      
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
                  child: FadeInImage.assetNetwork(
                    placeholder: 'assets/images/python.png', // รูปภาพสำหรับการโหลด
                    image: books[index].cover,
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
