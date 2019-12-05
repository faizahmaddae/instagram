import 'package:flutter/material.dart';
import 'package:instagram/pages/add_page.dart';
import 'package:instagram/pages/favorite_page.dart';
import 'package:instagram/pages/home_page.dart';
import 'package:instagram/pages/profile_page.dart';
import 'package:instagram/pages/search_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      theme: ThemeData(
        primaryColor: new Color(0xfff8f8f8),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.camera_alt),
        title: new Text('Instagram'),
        actions: <Widget>[
          new Icon(Icons.tv),
          new SizedBox(
            height: 10,
            width: 20,
          ),
          new Icon(
            Icons.send,
          ),
          new SizedBox(
            height: 10,
            width: 10,
          ),
        ],
      ),
      body: new TabBarView(controller: _tabController,children: <Widget>[
        new HomePage(),
        new SearchPage(),
        new AddPage(),
        new FavoritePage(),
        new ProfilePage(),
      ]),
      bottomNavigationBar: new Card(
        elevation: 10,
        margin: EdgeInsets.zero,
        child: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.home,),
            ),
            new Tab(
              icon: new Icon(Icons.search),
            ),
            new Tab(
              icon: new Icon(Icons.add),
            ),
            new Tab(
              icon: new Icon(Icons.favorite),
            ),
            new Tab(
              icon: new Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }

//  test(){
//    new BottomAppBar(
//      child: new Row(
//        mainAxisAlignment: MainAxisAlignment.spaceAround,
//        children: <Widget>[
//          new IconButton(icon: new Icon(Icons.home), onPressed: (){}),
//          new IconButton(icon: new Icon(Icons.search), onPressed: (){}),
//          new IconButton(icon: new Icon(Icons.add), onPressed: (){}),
//          new IconButton(icon: new Icon(Icons.favorite), onPressed: (){}),
//          new IconButton(icon: new Icon(Icons.person), onPressed: (){}),
//
//        ],
//      ),
//    );
//  }

}
