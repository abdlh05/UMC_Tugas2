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

class CustomListItem extends StatelessWidget {
  const CustomListItem({
    Key? key,
    required this.thumbnail,
    required this.title,
    required this.user,
    required this.stock,
  }) : super(key: key);

  final Widget thumbnail;
  final String title;
  final String user;
  final Widget stock;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: thumbnail,
          ),
          Expanded(
            flex: 3,
            child: _ProductList(
              title: title,
              user: user,
              stock: stock,
            ),
          ),
          const Icon(
            Icons.more_vert,
            size: 16.0,
          ),
        ],
      ),
    );
  }
}

class _ProductList extends StatelessWidget {
  const _ProductList({
    Key? key,
    required this.title,
    required this.user,
    required this.stock,
  }) : super(key: key);

  final String title;
  final String user;
  final Widget stock;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14.0,
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
          Text(
            user,
            style: const TextStyle(fontSize: 10.0),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 1.0)),
          Text(
            '$stock views',
            style: const TextStyle(fontSize: 10.0),
          ),
        ],
      ),
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
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        itemExtent: 106.0,
        children: <CustomListItem>[
          CustomListItem(
            user: 'Flutter',
            stock: Container(decoration: BoxDecoration()),
            thumbnail: Container(
              decoration: const BoxDecoration(color: Colors.blue),
            ),
            title: 'The Flutter YouTube Channel',
          ),
          CustomListItem(
            user: 'Dash',
            stock: Container(decoration: BoxDecoration()),
            thumbnail: Container(
              decoration: const BoxDecoration(color: Colors.yellow),
            ),
            title: 'Announcing Flutter 1.0',
          ),
        ],
      ),
      // body: ListView.builder(
      //     padding: EdgeInsets.only(top: 20.0),
      //     itemCount: 3,
      //     itemBuilder: (context, index) {
      //       return Padding(
      //         padding: EdgeInsets.all(5.0),
      //         child: Card(
      //           shape: BeveledRectangleBorder(
      //             borderRadius: BorderRadius.circular(2.0),
      //           ),
      //           color: Colors.blueGrey[50],
      //           child: Column(children: <Widget>[
      //             ListTile(
      //               leading: ClipRRect(
      //                 borderRadius: BorderRadius.circular(5.0),
      //                 child: Image.network("https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bmlrZSUyMHNob2V8ZW58MHx8MHx8&w=1000&q=80", width: 50.0, height: 60.0),
      //               ),
      //               title: Text("Brand New Shoes", maxLines: 1, overflow: TextOverflow.ellipsis),
      //               subtitle: Text("SH-231", maxLines: 1, overflow: TextOverflow.ellipsis),
      //               trailing: Icon(
      //                 Icons.delete_forever_rounded,
      //               ),
      //               isThreeLine: true,
      //             ),
      //           ]),
      //         ),
      //       );
      //     }),
      floatingActionButton: FloatingActionButton.extended(
        label: Text('New Product'),
        icon: Icon(Icons.shopping_bag_rounded),
        onPressed: () => temp(),
      ),
    );
  }
}
