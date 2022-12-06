import 'package:flutter/material.dart';
import 'recipe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'Thanksgiving App',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.black,
          secondary: Colors.black,
        ),
      ),
      home: const MyHomePage(title: 'Thanksgiving Recipe Book'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Thanksgiving Recipe Book'),
      ),
      body: SafeArea(
          child: ListView.builder(
              itemCount: Recipe.turkey.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return buildDirection(index);
                        },
                      ),
                    );
                  },
                  child: buildFoodCard(index),
                );
              })),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank),
            label: 'Turkey',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cake),
            label: 'Dessert',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_drink),
            label: 'Beverages',
          )
        ],
      ),
    );
  }

  Widget buildFoodCard(int index) {
    return Card(
      color: Colors.white,
      elevation: 2.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(whicheat(_selectedIndex, index, 3))),
            const SizedBox(
              height: 14.0,
            ),
            Text(whicheat(_selectedIndex, index, 0)),
          ],
        ),
      ),
    );
  }

  String whicheat(int count, int choose, int actual) {
    List temp = [];
    if (count == 0) temp = Recipe.turkey;
    if (count == 1) temp = Recipe.dessert;
    if (count == 2) temp = Recipe.drink;
    Recipe j = temp[choose];
    if (actual == 0) return j.name;
    if (actual == 1) return j.rec;
    if (actual == 2) return j.image;
    return j.image;
  }

  Widget buildDirection(int index) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: Text(whicheat(_selectedIndex, index, 0))),
        body: SafeArea(
            child: ListView(
          children: <Widget>[
            Center(
              child: DecoratedBox(
                decoration: BoxDecoration(
                    border: Border.all(),
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: Image(
                    image: AssetImage(whicheat(_selectedIndex, index, 2))),
              ),
            ),
            Center(
              child: DecoratedBox(
                decoration: BoxDecoration(
                    border: Border.all(),
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: Image(
                    image: AssetImage(whicheat(_selectedIndex, index, 1))),
              ),
            )
          ],
        )));
  }
}
