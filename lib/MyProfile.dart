import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
@override
Widget build(BuildContext context) {
  final title = 'Amazon';


  return MaterialApp(
    home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              snap: false,
              pinned: true,
              floating: false,
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(0),
                child: SearchBar(
                  hintText: "Search",
                )
              ),
              // flexibleSpace: FlexibleSpaceBar(
              //     centerTitle: true,
              //     title: Text("$title",
              //         style: TextStyle(
              //           color: Colors.white,
              //           fontSize: 16.0,
              //         ) //TextStyle
              //     ), //Text
              //     background: Image.asset(
              //       'assets/img1.jpg',
              //       fit: BoxFit.cover,
              //     ) //Images.network
              // ), //FlexibleSpaceBar
              expandedHeight: 230,
              backgroundColor: Colors.pinkAccent[400],
              leading: IconButton(
                icon: Icon(Icons.menu),
                tooltip: 'Menu',
                onPressed: () {},
              ), //IconButton
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.comment),
                  tooltip: 'Comment Icon',
                  onPressed: () {},
                ), //IconButton
                IconButton(
                  icon: Icon(Icons.settings),
                  tooltip: 'Setting Icon',
                  onPressed: () {},
                ), //IconButton
              ], //<Widget>[]
            ), //SliverAppBar
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) => ListTile(
                  tileColor: (index % 2 == 0) ? Colors.white : Colors.green[50],
                  title: Center(
                    child: Text('$index',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 50,
                            color: Colors.greenAccent[400]) //TextStyle
                    ), //Text
                  ), //Center
                ), //ListTile
                childCount: 51,
              ), //SliverChildBuildDelegate
            )
          ], //<Widget>[]
        ) //CustonScrollView
    ), //Scaffold
    debugShowCheckedModeBanner:false,
    // Remove debug banner for proper
    // view of setting icon
  ); //MaterialApp
}
}