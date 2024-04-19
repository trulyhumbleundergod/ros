import 'package:flutter/material.dart';
import 'package:rosss/columnrow.dart';

class NewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          // color: Colors.green,
          child: Text(
            'Panda',
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              decoration: TextDecoration.none,
            ),
          ),
          height: 200,
          width: 200,
          alignment: Alignment.center,
          // padding: EdgeInsets.all(50),
          // margin: EdgeInsets.all(50),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/1.webp'),
              fit: BoxFit.cover,
              // gradient: new LinearGradient(
              //   colors: [Colors.red, Colors.cyan],
              // ),
              // color: Colors.cyan,
              // border: Border.all(
              //   color: Colors.black,
              //   width: 8,
              // ),
              // borderRadius: BorderRadius.circular(15),
            ),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black45,
                blurRadius: 5.0,
                spreadRadius: 5.0,
                offset: Offset(-5, 5),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ColumnRow()),
          );
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}
