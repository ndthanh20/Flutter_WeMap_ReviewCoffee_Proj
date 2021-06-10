import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/coffee2.jpg'),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.fromLTRB(0, h*0.3, 0, h*0.22),
                child: Center(
                  child: Text(
                    'COFFEE',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.w700,
                        fontSize: 50),
                  ),
                )),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, h*0.04),
              child: SizedBox(
                width: 250,
                height: 60,
                child: TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.all(16.0),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  onPressed: () {
                    Navigator.pushNamed(context, '/all');
                  },
                  child: Text(
                    'Danh sách quán',
                    style: TextStyle(
                        color: Colors.brown,
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.w700,
                        fontSize: 22),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, h*0.04),
              child: SizedBox(
                width: 250,
                height: 60,
                child: TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.all(16.0),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  onPressed: null,
                  child: Text(
                    'Tìm trên bản đồ',
                    style: TextStyle(
                        color: Colors.brown,
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.w700,
                        fontSize: 22),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, h*0.04),
              child: SizedBox(
                width: 250,
                height: 60,
                child: TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.all(16.0),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  onPressed: null,
                  child: Text(
                    'Quán yêu thích',
                    style: TextStyle(
                        color: Colors.brown,
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.w700,
                        fontSize: 22),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
