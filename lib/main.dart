import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Products',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(primarySwatch: Colors.blue, appBarTheme: AppBarTheme(color: Colors.white)),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Products'),
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
        centerTitle: true,
        title: Text(title, style: TextStyle(color: Colors.blue)),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_bag_outlined, color: Colors.blue),
        ),
      ),
      body: ListView.builder(
          padding: EdgeInsets.only(top: 30.0, right: 8.0, left: 8.0),
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Card(
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                color: Colors.blueGrey[50],
                child: Column(children: <Widget>[
                  ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(
                        "https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmlrZSUyMHNob2V8ZW58MHx8MHx8&w=1000&q=80",
                        fit: BoxFit.contain,
                      ),
                    ),
                    title: Column(children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text("Brand New Shoes", maxLines: 1, overflow: TextOverflow.ellipsis),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text("NK-231", style: TextStyle(color: Colors.grey, fontSize: 10.0)),
                      )
                    ]),
                    subtitle: Container(
                      margin: const EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.transparent,
                            width: 0,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text('Hello, Flutter!', style: TextStyle(fontSize: 16, color: Colors.white)),
                      ),
                    ),
                    trailing: Icon(
                      Icons.delete_forever_rounded,
                    ),
                    isThreeLine: true,
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
