import 'package:flutter/material.dart';

class NewNavBar extends StatelessWidget {
  final List<IconData> navBarIcons;

  NewNavBar(this.navBarIcons);

  void botaoFoiTocado(int index) {
    print("Tocaram no botão $index");
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: botaoFoiTocado,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.blue,
      backgroundColor: Colors.blue,
      items: List.generate(navBarIcons.length, (index) {
        return BottomNavigationBarItem(
          icon: Icon(navBarIcons[index]),
          label: "Início",
        );
      }),
    );
  }
}

class MyBodyContent extends StatelessWidget {
  const MyBodyContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Text(
            "Fight Club",
            style: TextStyle(color: Colors.red.shade800),
          ),
        ),
        Expanded(
          child: Text(
            "Mad Max - Fury Road",
            style: TextStyle(color: Colors.amber.shade400),
          ),
        ),
        Expanded(
          child: Text(
            "Matrix",
            style: TextStyle(color: Colors.green),
          ),
        ),
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  MyApp();

  final navBarIcons = [
    Icons.house,
    Icons.play_arrow,
    Icons.cancel,
    Icons.book,
    Icons.list,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Scaffold(
        appBar: AppBar(
          title: Container(
            child: Text(
              "Top 3 filmes",
              style: TextStyle(color: Colors.white),
            ),
            alignment: Alignment.center,
          ),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Expanded(
              child: MyBodyContent(),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                child: Center(
                  child: Text(
                    "Meu top filmes modernos",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: NewNavBar(navBarIcons),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
