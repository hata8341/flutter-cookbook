import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'floating App Bar';

    return MaterialApp(
        title: title,
        home: Scaffold(
          body: CustomScrollView(
            slivers: [
              const SliverAppBar(
                title: Text(title),
                floating: true,
                flexibleSpace: Placeholder(),
                expandedHeight: 200,
              ),
              SliverList(
                  delegate: SliverChildBuilderDelegate(
                (context, index) => ListTile(title: Text('アイテム #$index')),
                childCount: 1000,
              ))
            ],
          ),
        ));
  }
}
