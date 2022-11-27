import 'package:flutter/material.dart';
import 'package:untitled4/next_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final items = List.generate(100, (i) => "item $i",);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
        title: Text('rzvbeanのyoutube'),
          leading: Icon(Icons.videocam),
          actions: [
            IconButton(onPressed: () {}, icon:Icon(Icons.search)),
            IconButton(onPressed: () {}, icon:Icon(Icons.more_vert))
          ],
    ),
          body:
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network('https://yt3.ggpht.com/OSc5In8tYOJ3a_WlZiFCe507_xnAz8zh3Qdvy84jPGU_MMVQnxql18V1xAwnOGYsOuE62npdxg=s176-c-k-c0x00ffffff-no-rj',
                    height: 60,
                    width: 60,
                    ),
                  SizedBox(width: 8,),
                  Container(
                    child: Column(
                      children: [
                        Text('rzvbeanのyoutube'),
                        Row(
                          children: [
                            IconButton(onPressed: () {},
                                icon: Icon(Icons.video_call),),
                            Text('登録する')
                          ],
                        )
                      ],
                    ),
                  ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount:items.length ,
                  itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.network('https://yt3.ggpht.com/OSc5In8tYOJ3a_WlZiFCe507_xnAz8zh3Qdvy84jPGU_MMVQnxql18V1xAwnOGYsOuE62npdxg=s176-c-k-c0x00ffffff-no-rj',
                      height: 60,
                      width: 60,
                    ),
                    title: Text('fluttet入門'),
                    trailing: Icon(Icons.more_vert),
                    onTap: ()async {
                      await Navigator.push(context, MaterialPageRoute(builder: (context) => NextPage(),));
                    },
                  );
                },),
              )
            ],
          ),
    ),
    );
  }
}


