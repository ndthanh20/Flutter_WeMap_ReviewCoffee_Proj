import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  final String image;
  final String name;
  final String address;

  const Detail(
      {Key? key,
      required this.image,
      required this.name,
      required this.address})
      : super(key: key);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
        backgroundColor: Colors.brown,
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.image), fit: BoxFit.cover)),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 50, 0, 0),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {print(1);},
                    icon: Icon(Icons.fmd_good)),
                Text(
                  widget.address,
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 22,
                    color: Colors.brown,
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
