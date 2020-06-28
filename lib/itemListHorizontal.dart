import 'package:flutter/material.dart';

class itemListHorizontal extends StatelessWidget {
  List list;
  itemListHorizontal({this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index){

          return Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            height: MediaQuery.of(context).size.height,
            width: 150,
            child: Stack(
              children: <Widget>[
                ClipRRect(
                  child: Image.network('http://192.168.0.114/movie/images/' +
                      list[index]['gambar'], fit: BoxFit.fill, width: MediaQuery.of(context).size.width,),
                ),

              ],
            ),
          );
        });
  }
}
