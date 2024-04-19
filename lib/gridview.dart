import 'package:flutter/material.dart';
import 'package:rosss/pageview.dart';

void main() => runApp(GridviewPage());

class GridviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GridView Widget'),
        ),
        body: GridViewCustomWidget(),
        floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PageViewWid()),
          );
        },
        child: Icon(Icons.arrow_forward),
      ),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(5),
      decoration:
          BoxDecoration(border: Border.all(color: Colors.black, width: 1)),
      child: Text(
        text,
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}

class GridViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      children: <Widget>[
        TextWidget(text: "1"),
        TextWidget(text: "2"),
        TextWidget(text: "3"),
        TextWidget(text: "4"),
        TextWidget(text: "5"),
        TextWidget(text: "6"),
        TextWidget(text: "7"),
        TextWidget(text: "8"),
        TextWidget(text: "9"),
        TextWidget(text: "10"),
      ],
    );
  }
}

class GridViewBuilderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        // itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return TextWidget(text: '$index');
        });
  }
}

class GridViewCountWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: <Widget>[
        TextWidget(text: "1"),
        TextWidget(text: "2"),
        TextWidget(text: "3"),
        TextWidget(text: "4"),
        TextWidget(text: "5"),
        TextWidget(text: "6"),
        TextWidget(text: "7"),
        TextWidget(text: "8"),
        TextWidget(text: "9"),
        TextWidget(text: "10"),
      ],
    );
  }
}

class GridViewExtentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final queryData = MediaQuery.of(context);
    print(queryData.size);

    return Container(
        width: 300,
        color: Colors.greenAccent,
        child: GridView.extent(
          maxCrossAxisExtent: 90,
          children: [
            TextWidget(text: "1"),
            TextWidget(text: "2"),
            TextWidget(text: "3"),
            TextWidget(text: "4"),
            TextWidget(text: "5"),
          ],
        ));
  }
}

class GridViewCustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.custom(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      // childrenDelegate: SliverChildListDelegate([
      //   TextWidget(text: "1"),
      //   TextWidget(text: "2"),
      //   TextWidget(text: "3"),
      // ]));
      childrenDelegate: SliverChildBuilderDelegate((context, index) {
        return TextWidget(text: '$index');
      }),
    );
  }
}
