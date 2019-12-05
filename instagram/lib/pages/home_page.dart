import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  String imageUrl =
      'http://appjow.com/wp-content/uploads/2019/09/Android-header-585x390.jpg';

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return (index == 0)
            ? myStories()
            : Column(
                children: <Widget>[
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.red,
                      backgroundImage: NetworkImage('$imageUrl'),
                    ),
                    title: new Text('GYM Fitness',style: TextStyle(fontWeight: FontWeight.w700),),
                    subtitle: new Text('this is my love'),
                    trailing: new Icon(Icons.more_vert),
                  ),
                  InkWell(
                    onTap: (){},
                    splashColor: Colors.red,
                    child: new Container(
                      height: 300,
                      color: Colors.grey,
                    ),
                  )
                ],
              );
      },
    );
  }

  Widget myStories() {
    return new Column(
      children: <Widget>[
        SizedBox(
          height: 80,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (cxt, i) {
              return new Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 60,
                        width: 60,
                        margin: EdgeInsets.only(left: 5),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage('$imageUrl'),
                          ),
                        ),
                      ),
                      (i == 0)
                          ? Positioned(
                        right: 0,
                        bottom: 0,
                        child: new Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                          child: new Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      )
                          : new Container()
                    ],
                  ),
                  new Text('Faiz')
                ],
              );
            },
          ),
        ), new Divider()
      ],
    );
  }
}




