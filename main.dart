import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Playfair Display'),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(),
        drawerEnableOpenDragGesture: false,
        drawerEdgeDragWidth: 0,
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('User Name'),
                accountEmail: Text('user@example.com'),
                currentAccountPicture: CircleAvatar(
                    //backgroundImage: AssetImage('assets/user_profile.jpg'),
                    ),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(118, 165, 209, 1),
                ),
              ),
              SizedBox(height: 50),
              ListTile(
                title: const Text('Edit your profile'),
                leading: Icon(Icons.edit),
                onTap: () {
                  // Handle tap on Home
                },
              ),
              ListTile(
                title: const Text('Favourites'),
                leading: Icon(Icons.favorite),
                onTap: () {
                  // Handle tap on Settings
                },
              ),
              ListTile(
                title: const Text('Notifactions'),
                leading: Icon(Icons.notifications),
                onTap: () {
                  // Handle tap on Settings
                },
              ),
              ListTile(
                title: const Text('Contact Us'),
                leading: Icon(Icons.contact_support),
                onTap: () {
                  // Handle tap on Settings
                },
              ),
              ListTile(
                title: const Text('Log Out'),
                leading: Icon(Icons.logout),
                onTap: () {
                  // Handle tap on Home
                },
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Find your best ',
                style: TextStyle(
                  color: Color.fromRGBO(56, 73, 106, 1),
                  fontSize: 30,
                ),
              ),

              Text(
                'Property ',
                style: TextStyle(
                  color: Color.fromRGBO(56, 73, 106, 1),
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(213, 215, 219, 1),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    hintText: 'Search...',
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Text(
                'Categories ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 25),
              Row(
                children: [
                  SizedBox(width: 25),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.house,
                      size: 40,
                      color: Colors.black,
                    ),
                    label: const Text(
                      'Residential',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 25,
                      ),
                    ),
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all<Size>(
                        Size(250.0, 60.0),
                      ),
                    ),
                  ),
                  SizedBox(width: 200), // Add some space between buttons
                  ElevatedButton.icon(
                    onPressed: () {
                      // Add your logic for the second button
                    },
                    icon: Icon(
                      Icons.apartment,
                      size: 40,
                      color: Colors.black,
                    ),
                    label: const Text(
                      'Commercial',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 25,
                      ),
                    ),
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all<Size>(
                        Size(250.0, 60.0),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text(
                'Featured Properties ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 10),
              //   SizedBox(width: 500),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {},
                      child: const Text('View All'))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
