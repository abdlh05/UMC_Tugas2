import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  void temp() {
    print('Whats New?');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(30.0),
              child: Card(
                child: ListTile(
                  leading: Image.network(""),
                  title: Text("Brand New Shoe", maxLines: 1, overflow: TextOverflow.ellipsis),
                  subtitle: Text("SH-231", maxLines: 1, overflow: TextOverflow.ellipsis),
                  trailing: Icon(Icons.delete_forever_rounded),
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton.extended(
        label: Text('New Product'),
        icon: Icon(Icons.add),
        onPressed: () => temp(),
      ),
    );
  }
}
