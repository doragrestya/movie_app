import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:movieapp/itemListHorizontal.dart';
import 'package:movieapp/itemListVertical.dart';

void main() {
  runApp(MaterialApp(
    home: MovieApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MovieApp extends StatefulWidget {
  @override
  _MovieAppState createState() => _MovieAppState();
}

class _MovieAppState extends State<MovieApp> {
  Future<List> getData() async {
    final response = await http.get("http://192.168.0.114/movie/getMovie.php");
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('MOVIES', style: TextStyle(letterSpacing: 5),),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),

      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 16, bottom: 10),
            child: Text(
              'Recommended',
              style: TextStyle(
                  color: Colors.red, fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
              height: MediaQuery.of(context).size.height / 4,
              child: FutureBuilder(
                future: getData(),
                builder: (context, result) {
                  if (result.hasError) print(result.error);
                  return result.hasData
                      ? itemListHorizontal(list: result.data)
                      : Center(
                    child: CircularProgressIndicator(),
                  );
                },
              )),


          Padding(
            padding: const EdgeInsets.only(left: 16, top: 16, bottom: 10),
            child: Text(
              'LIST MOVIE',
              style: TextStyle(
                  color: Colors.red, fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: FutureBuilder(
              future: getData(),
              builder: (context, result) {
                if (result.hasError) print(result.error);
                return result.hasData
                    ? itemListVertical(list: result.data)
                    : Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

//class MovieApp extends StatefulWidget {
//  @override
//  _MovieAppState createState() => _MovieAppState();
//}
//
//class _MovieAppState extends State<MovieApp> {
//  Future<List> getData() async {
//    final response = await http.get("http://192.168.0.114/movie/getMovie.php");
//    return json.decode(response.body);
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('MOVIE APPS'),
//      ),
//      body: FutureBuilder(
//        future: getData(),
//        builder: (context, snapshot) {
//          if (snapshot.hasError) print(snapshot.error);
//          return snapshot.hasData
//              ? ListVideo(list: snapshot.data)
//              : Center(
//                  child: CircularProgressIndicator(),
//                );
//        },
//      ),
//    );
//  }
//}
//
//class ListVideo extends StatelessWidget {
//  List list;
//  int index;
//  ListVideo({this.list, this.index});
//
//  @override
//  Widget build(BuildContext context) {
//    return GridView.builder(
//        shrinkWrap: true,
//        itemCount: list.length,
//        scrollDirection: Axis.vertical,
//        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//          crossAxisCount: 2,
//          mainAxisSpacing: 1.0, //MENGATUR JARAK ANTARA OBJEK ATAS DAN BAWAH
//          crossAxisSpacing: 3, //MENGATUR JARAK ANTARA OBJEK KIRI DAN KANAN
//          childAspectRatio: 0.6, //
//        ),
//        itemBuilder: (context, i) {
//          return Padding(
//              padding: EdgeInsets.only(bottom: 20, left: 5),
//              child: InkWell(
//              onTap: (){
//                Navigator.push(context, MaterialPageRoute(builder: (context) => Detail(list: list, index: i)));
//              },
//
//                child: Card(
//                  shape: RoundedRectangleBorder(
//                    borderRadius: BorderRadius.circular(10),
//                  ),
//                  child: Center(
//                    child: Stack(
//                      children: <Widget>[
//                        Padding(
//                          padding: const EdgeInsets.only(top: 40),
//                          child: Container(
//                            height: MediaQuery.of(context).size.height,
//                            width: MediaQuery.of(context).size.width,
//                            decoration: BoxDecoration(
//                                image: DecorationImage(
//                                    image: NetworkImage(
//                                        'http://192.168.0.114/movie/images/' +
//                                            list[i]['gambar']),
//                                    fit: BoxFit.cover)),
//                          ),
//                        ),
//                        Row(
//                          children: <Widget>[
//                            Icon(Icons.date_range),
//                            Text('${list[i]['tanggal']}'),
//                          ],
//                        ),
//                        Padding(
//                          padding: const EdgeInsets.only(top: 30),
//                          child: Column(
//                            children: <Widget>[
//                              Text('${list[i]['judul']}', style: TextStyle(fontSize: 25),),
//                            ],
//                          ),
//                        )
//                      ],
//                    ),
//                  ),
//                ),
//              ));
//        });
//  }
//}
//
//class Detail extends StatefulWidget {
//  List list;
//  int index ;
//  Detail({this.list, this.index});
//  @override
//  _DetailState createState() => _DetailState();
//}
//
//class _DetailState extends State<Detail> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(),
//
//      body: ListView(
//        children: <Widget>[
//          Image.network('http://192.168.0.114/movie/images/' +
//              widget.list[widget.index]['gambar'], fit: BoxFit.fill,),
//
//          Card(
//            child: ListTile(
//              title: Column(
//                children: <Widget>[
//                  Text(widget.list[widget.index]['judul'])
//                ],
//              ),
//            ),
//          ),
//
//          Card(
//            child: Padding(
//              padding: const EdgeInsets.all(5),
//              child: Column(
//                crossAxisAlignment: CrossAxisAlignment.start,
//                children: <Widget>[
//                  Text(widget.list[widget.index]['deskripsi'], textAlign: TextAlign.justify,),
//
//                ],
//              ),
//            ),
//          )
//        ],
//      ),
//    );
//  }
//}
