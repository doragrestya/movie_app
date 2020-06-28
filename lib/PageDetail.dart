import 'package:flutter/material.dart';

class PageDetail extends StatelessWidget {
  List list;
  int index;
  PageDetail({this.list, this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: <Widget>[
                Text(
                  list[index]['judul'],
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: ClipRRect(
                    child: Image.network(
                      'http://192.168.0.114/movie/images/' +
                          list[index]['gambar'],
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(Icons.date_range, size: 12, color: Colors.black,),
                              Text(
                                list[index]['tanggal'],
                                style: TextStyle(fontSize: 12, color: Colors.black),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Text(
                              list[index]['deskripsi'], textAlign: TextAlign.justify,
                              style: TextStyle(fontSize: 15, color: Colors.black),
                            ),
                          )
                        ],
                      ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
