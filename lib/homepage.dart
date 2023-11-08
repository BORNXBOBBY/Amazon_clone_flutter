import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'modelpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AmazonHomePage(),
    );
  }
}

class AmazonHomePage extends StatelessWidget {
  final List<String> imageList1 = [
    'assets/img1.jpg',
    'assets/img2.jpg',
    'assets/img3.jpg',
    'assets/img4.jpg',
    'assets/img5.jpg',
    'assets/img6.jpg',
    'assets/img7.jpg',
    'assets/img8.jpg',
  ];
  List<DataModel> users =[
    DataModel(place: 'Deals', image: 'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/be795248885887.58a4aee28994c.jpg'),
    DataModel(place: 'Prime', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3V4s3vPF5lAgmMnTFxDH_NfVKaI0cOgoj95PTX2yJTb8Qw05Lx7sjsBx9jfMPUkysWuc&usqp=CAU'),
    DataModel(place: 'Mobiles',  image: 'https://images.unsplash.com/photo-1598327105740-820e04db502e?auto=format&fit=crop&q=80&w=1000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8eGlhb21pfGVufDB8fDB8fHww'),
    DataModel(place: 'fashion', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9aRSKL55YlR4_fTcskgyzQ3rtmSEBpk6vIQ&usqp=CAU'),
    DataModel(place: 'miniTv', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcut78SCiYNZfs6AyVjENNnvTzAKr5NVGOCEM9c0OesGZ5t2bjr2wBkR539TdJvRhfeDI&usqp=CAU'),
    DataModel(place: 'Electronics', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPMohz3AdGrGtK0toZnUrHyGfzae_hLGhQ7Q&usqp=CAU'),
    DataModel(place: 'Home', image: 'https://m.media-amazon.com/images/I/61aGnx0iT0L._AC_UF1000,1000_QL80_.jpg'),
    DataModel(place: 'Travel', image: 'https://images.pexels.com/photos/2577274/pexels-photo-2577274.jpeg'),
    DataModel(place: 'Beauty', image: 'https://cdn.pixabay.com/photo/2013/03/02/01/25/jeans-89042_640.jpg'),
    DataModel(place: 'Furniture', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDaJqEH7149xySXnJesSkeV6LEPtl12p0J9Q&usqp=CAU'),
    DataModel(place: 'Movies', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqZIO7BOHvB3FNN0Ov8_oonG5docX8tWLpdQ&usqp=CAU'),
    DataModel(place: 'Appliances', image: 'https://bpac.in/wp-content/uploads/2021/08/BlogsArtboard-1-copy-9.jpg'),
    DataModel(place: 'Grocery', image: 'https://bpac.in/wp-content/uploads/2021/08/BlogsArtboard-1-copy-9.jpg'),
    DataModel(place: 'Books,Toys', image: 'https://images.pexels.com/photos/2577274/pexels-photo-2577274.jpeg'),
  ];
  final List<String> circularImageList = [
    'https://apollo-singapore.akamaized.net/v1/files/fuos8y7odlth2-IN/image',
    'https://5.imimg.com/data5/XA/XC/MY-10182611/desktop-computer1-500x500.jpg',
    'https://apollo-singapore.akamaized.net/v1/files/fuos8y7odlth2-IN/image',
    'https://5.imimg.com/data5/XA/XC/MY-10182611/desktop-computer1-500x500.jpg',
    'https://images.unsplash.com/photo-1580566231970-2c91d3f49637?auto=format&fit=crop&q=80&w=1000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8aXBob25lJTIwMTB8ZW58MHx8MHx8fDA%3D',
    'https://images.unsplash.com/photo-1580566231970-2c91d3f49637?auto=format&fit=crop&q=80&w=1000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8aXBob25lJTIwMTB8ZW58MHx8MHx8fDA%3D',
    'https://datamation.in/wp-content/uploads/2021/03/LG-108-cm-43-Inches-Full-HD-Smart-LED-TV-43LM5600PTCdatamation1.jpg',
    'https://5.imimg.com/data5/XA/XC/MY-10182611/desktop-computer1-500x500.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1y1gDsHBxNsukrnF8agMPNVG6zPFTI6JMQg&usqp=CAU',
    'https://apollo-singapore.akamaized.net/v1/files/fuos8y7odlth2-IN/image',
  ];

  final List<String> cardImageList = [
    'https://images.pexels.com/photos/11748430/pexels-photo-11748430.jpeg?cs=srgb&dl=pexels-%F0%9D%96%86%F0%9D%96%92%F0%9D%96%86%F0%9D%96%93-%F0%9D%96%86%F0%9D%96%8F%F0%9D%96%8E%F0%9D%96%92%F0%9D%96%86%F0%9D%96%91-%F0%9D%95%B1%F0%9D%96%86%F0%9D%96%98%F0%9D%96%8D%F0%9D%96%8E%F0%9D%96%94%F0%9D%96%93-%F0%9D%95%BE%F0%9D%96%99%F0%9D%96%9E%F0%9D%96%91%F0%9D%96%8E%F0%9D%96%98%F0%9D%96%99-11748430.jpg&fm=jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLCFoJnlA5w4ZnoGWzz33XKirXcLx9FgjYFg&usqp=CAU',
    'https://cdn0.weddingwire.in/article/9662/original/1280/jpg/12669-lehenga-images-hd-hitched-clicked-quintessential-red-lehenga-for-the-boss-bride.jpeg',
    'https://cdn0.weddingwire.in/article/9662/original/1280/jpg/12669-lehenga-images-hd-hitched-clicked-quintessential-red-lehenga-for-the-boss-bride.jpeg',
    'https://media.istockphoto.com/id/882157056/photo/red-elegant-skirt-with-ribbon-bow-isolated-on-white.webp?b=1&s=170667a&w=0&k=20&c=AUVtYb1z1CzmHH9mGRiVt4fImNLcb3gzhPqqtbOQxBA=',
    'https://www.shutterstock.com/image-photo/girl-wearing-nude-colored-skirt-260nw-1171400185.jpg',
    'https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&q=80&w=1000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvZXN8ZW58MHx8MHx8fDA%3D',
    'https://images.unsplash.com/photo-1580902394724-b08ff9ba7e8a?auto=format&fit=crop&q=80&w=1000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGFkaWRhcyUyMHNob2V8ZW58MHx8MHx8fDA%3D',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpL5jTtBsD4qd_LU1hB6-Y2_nwa0M4jOFp-Q&usqp=CAU',
    'https://thumbs.dreamstime.com/b/female-shoes-10860902.jpg',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        iconTheme: IconThemeData(color: Colors.black),
        title: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {},
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.camera_alt),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.mic),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.qr_code),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.pinkAccent, Colors.yellowAccent],
          ),
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                        children: [
                        CircleAvatar(

                        backgroundImage: NetworkImage(users[index].image),
                    radius: 40,
                  ),
                  Container(
                  child: Text(users[index].place),
                  ),
                  ],
                  ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 250,
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 300.0,
                  enableInfiniteScroll: false,
                  enlargeCenterPage: true,
                ),
                items: imageList1.map((item) => Image.asset(item, fit: BoxFit.cover)).toList(),
              ),
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image.network(
                      circularImageList[index],
                      width: 200,
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Card(
                      child: Image.network(
                        cardImageList[index],
                        width: 100,
                        height: 130,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.black),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more, color: Colors.black),
            label: 'More',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: Colors.black),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu, color: Colors.black),
            label: 'Menu',
          ),
        ],
        selectedItemColor: Colors.pinkAccent,
      ),
    );
  }
}