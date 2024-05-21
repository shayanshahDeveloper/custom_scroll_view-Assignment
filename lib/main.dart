import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Scroll View Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CustomScrollViewDemo(),
    );
  }
}

class CustomScrollViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Scroll View Demo'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('SliverAppBar'),
              background: Image.network(
                'https://flutter.dev/assets/homepage/carousel/slide_1-layer_0-2fcecc8d5c65b0f51cc1642edcd6c4fc175a17494939e379f912bc02e3f4dd67.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) => ListTile(
                title: Text('Item #$index'),
              ),
              childCount: 20,
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
                  (context, index) => Container(
                color: index.isEven ? Colors.blue : Colors.green,
                child: Center(
                  child: Text('Grid Item #$index'),
                ),
              ),
              childCount: 20,
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 2.0,
            ),
          ),
        ],
      ),
    );
  }
}
