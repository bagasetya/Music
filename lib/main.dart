import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BelajarAppBar(),
    );
  }
}

class BelajarAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("Belajar Silver AppBar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      )),
                  background: Image(
                    image: NetworkImage('https://images3.alphacoders.com/175/175889.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.black87,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      new Tab(icon: new Icon(Icons.audiotrack), text: "Songs"),
                      new Tab(icon: new Icon(Icons.collections), text: "Gallery"),
                      new Tab(icon: new Icon(Icons.audiotrack), text: "SongsFavorite"),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: <Widget>[
              Songs(),
              Gallery(),
              SongsFavorite()
            ],
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
      color: Colors.white,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}

class Songs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Jika - Melly Goeslaw"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Gantung - Melly Goeslaw"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Bimbang - Melly Goeslaw"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Every Summertime - NIKI"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Im Falling in Love - Melly Goeslaw"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Cinta Sejati - Bunga Citra Lestari"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Bahaya - Tiara Andini"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Merasa Indah - Tiara Andini"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Janji Kita - Mahalini"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Love Story - Taylor Swift"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Aku Yang Salah - Mahalini"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Blank Space - Taylor Swift"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Jealous - Labrinth"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Lowkey - NIKI"),
          ),
        ],
      ),
    );
  }
}

class Gallery extends StatelessWidget {
  final List images = [
    "assets/images/lag1.jpg",
    "assets/images/lag2.jpg",
    "assets/images/lag3.jpg",
    "assets/images/lag4.jpg",
    "assets/images/lag5.png",
    "assets/images/lag6.jpg",
    "assets/images/lag7.jpg",
    "assets/images/lag8.jpg",
    "assets/images/lag9.jpg",
    "assets/images/lag10.jpg",
    "assets/images/lag11.jpg",
    "assets/images/lag12.jpg",
    "assets/images/lag13.jpg",
    "assets/images/lag14.png",
    "assets/images/lag15.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: 30,
        itemBuilder: (context, index) {
          if (index > 0) {
            return Padding(
              padding: const EdgeInsets.all(3.0),
              child: Image.asset(images[index % 15]),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.asset(images[index]),
            );
          }
        },
      ),
    );
  }
}

class SongsFavorite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Gantung - Melly Goeslaw"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Janji Kita - Mahalini"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Lowkey - NIKI"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Merasa Indah - Tiara Andini"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Bahaya - Tiara Andini"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Jealous - Labrinth"),
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Cinta Sejati - Bunga Citra Lestari"),
          ),
        ],
      ),
    );
  }
}
