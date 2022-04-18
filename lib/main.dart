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
              padding: EdgeInsets.all(5.0),
              child: Card(
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                color: Colors.blueGrey[50],
                child: Column(children: <Widget>[
                  ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Image.network("https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmlrZSUyMHNob2V8ZW58MHx8MHx8&w=1000&q=80"),
                    ),
                    title: Text("Brand New Shoes", maxLines: 1, overflow: TextOverflow.ellipsis),
                    subtitle: Text("SH-231", maxLines: 1, overflow: TextOverflow.ellipsis),
                    trailing: Icon(
                      Icons.delete_forever_rounded,
                    ),
                    isThreeLine: true,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      right: 30.0,
                    ),
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(),
                    ),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text('halo', style: TextStyle(fontSize: 10, color: Colors.white)),
                    ),
                  ),
                ]),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton.extended(
        label: Text('New Product'),
        icon: Icon(Icons.shopping_bag_rounded),
        onPressed: () => temp(),
      ),
    );
  }
}
