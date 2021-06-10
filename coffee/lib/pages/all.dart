import 'package:flutter/material.dart';

class All extends StatefulWidget {
  const All({Key? key}) : super(key: key);

  @override
  _AllState createState() => _AllState();
}

class _AllState extends State<All> {
  List<String> all = [
    '1111',
    '2222',
    '3333',
    '4444',
    '1111',
    '2222',
    '3333',
    '4444',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[300],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.brown,
        title: Text(
          'Danh sách quán',
        ),
      ),
      body: ListView.builder(
        itemCount: all.length ~/ 2,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(5),
            child: Card(
              child: TextButton(
                onPressed: () {},
                child: Column(
                  children: [
                    Text(
                      all[index*2],
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        color: Colors.brown,
                      ),
                    ),
                    Text(
                      all[index*2+1],
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 18,
                        color: Colors.brown,
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
