import 'package:flutter/material.dart';

class List extends StatefulWidget {
  const List({super.key});

  @override
  State<List> createState() => _ListState();
}

class _ListState extends State<List> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            'List Produk',
            style: TextStyle(color: Colors.black),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(60.0),
            child: Padding(
              padding: EdgeInsets.all(3.0),
              child: TextField(
                onChanged: (value) {},
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 22),
                  labelText: 'Filter Products',
                  enabledBorder: InputBorder.none,
                  suffixIcon: IconButton(
                    padding: EdgeInsets.only(right: 22, left: 22),
                    icon: Icon(Icons.close),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext, int index) {
            return ItemContainer();
          }),
    );
  }

  Widget ItemContainer() {
    return Card(
      child: ListTile(
        title: Text('data dummy'),
        subtitle: Text('Harga: Rp. 2.000'),
        trailing: Icon(
          Icons.delete,
          color: Colors.red,
        ),
      ),
    );
  }
}
