import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ian Profile App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ProfileScreen(),
    );
  }
}

// MAIN PROFILE SCREEN
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        backgroundColor: Colors.blue,
      ),

      // HAMBURGER MENU
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Navigation Menu',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.sports_esports),
              title: const Text('My Hobbies'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HobbiesScreen(),
                  ),
                );
              },
            ),

            ListTile(
              leading: const Icon(Icons.photo),
              title: const Text('Favorite Pics'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FavoritePicsScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(radius: 40, child: Icon(Icons.person, size: 45)),

            const SizedBox(height: 15),

            const Text(
              'Ian',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8),

            const Text(
              'Computing Student',
              style: TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 20),

            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on, color: Colors.red),
                Text(' Newnan, GA   '),
                Icon(Icons.email, color: Colors.blue),
                Text(' ian@westga.com'),
              ],
            ),

            const SizedBox(height: 20),

            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HobbiesScreen(),
                  ),
                );
              },
              child: const Text('My Hobbies'),
            ),

            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FavoritePicsScreen(),
                  ),
                );
              },
              child: const Text('My Favorite Pics'),
            ),
          ],
        ),
      ),
    );
  }
}

// HOBBIES SCREEN
class HobbiesScreen extends StatelessWidget {
  const HobbiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Hobbies'),
        backgroundColor: Colors.blue,
      ),

      body: ListView(
        padding: const EdgeInsets.all(12),
        children: const [
          ListTile(
            leading: CircleAvatar(child: Text('1')),
            title: Text('Making Music'),
          ),
          ListTile(
            leading: CircleAvatar(child: Text('2')),
            title: Text('Playing Video Games'),
          ),
          ListTile(
            leading: CircleAvatar(child: Text('3')),
            title: Text('Home Projects'),
          ),
          ListTile(
            leading: CircleAvatar(child: Text('4')),
            title: Text('Swimming'),
          ),
          ListTile(
            leading: CircleAvatar(child: Text('5')),
            title: Text('Traveling'),
          ),
        ],
      ),
    );
  }
}

// FAVORITE PICTURES SCREEN
class FavoritePicsScreen extends StatelessWidget {
  const FavoritePicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite Pics'),
        backgroundColor: Colors.blue,
      ),

      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        children: const [
          PictureBox(name: 'Picture 1', color: Colors.lightBlue),
          PictureBox(name: 'Picture 2', color: Colors.blue),
          PictureBox(name: 'Picture 3', color: Colors.blueAccent),
          PictureBox(name: 'Picture 4', color: Colors.lightBlueAccent),
        ],
      ),
    );
  }
}

// PICTURE PLACEHOLDER
class PictureBox extends StatelessWidget {
  final String name;
  final Color color;

  const PictureBox({super.key, required this.name, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.image, color: Colors.white, size: 40),
          const SizedBox(height: 8),
          Text(name, style: const TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
