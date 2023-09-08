import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GridView Example'),
        ),
        body: MyGridView(),
      ),
    );
  }
}

class MyGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 6, // จำนวนรายการ
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // จำนวนคอลัมน์ใน GridView
      ),
      itemBuilder: (BuildContext context, int index) {
        // สร้างรายการใน GridView
        return GridTile(
          child: Image.network(
            'https://via.placeholder.com/150', // URL ของรูปภาพ
            fit: BoxFit.cover, // ปรับขนาดรูปภาพให้พอดีกับช่อง
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black.withOpacity(0.5),
            title: Text(
              'รายการ $index', // ข้อความใต้รูปภาพ
              style: TextStyle(fontSize: 16),
            ),
          ),
        );
      },
    );
  }
}
