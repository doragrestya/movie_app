import 'package:flutter/material.dart';
import 'package:movieapp/PageDetail.dart';

class itemListVertical extends StatelessWidget {
  List list;
  itemListVertical({this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: list.length,
        scrollDirection: Axis.vertical,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, i) {
          return Padding(
              padding: EdgeInsets.only(bottom: 20, left: 5),
              child:  Padding(
                padding: const EdgeInsets.only(left: 16, right: 2, bottom: 8),
                child: Column(
                  children: <Widget>[
                   Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 120,
                              width: 150,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    'http://192.168.0.114/movie/images/' +
                                        list[i]['gambar'],
                                  )),
                            ),
                            Flexible(
                              flex: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                      InkWell(
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => PageDetail(list: list, index: i,)));
                                        },
                                        child: Text(
                                          '${list[i]['judul']}',
                                          style: TextStyle(
                                              fontSize: 20, color: Colors.red
                                          ),
                                        ),
                                      ),
//                                  ),
                                    Text(
                                      '${list[i]['deskripsi']}',
                                      style: TextStyle(
                                        fontSize: 12, color: Colors.white
                                      ),
                                      softWrap: true,
                                      maxLines: 3,
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    SizedBox(
                      height: 8,
                    ),
                    Divider(
                      color: Colors.pink,
                      height: 1,
                      thickness: 2,
                    ),
                  ],
                ),
              )
          );
        });
  }
}
