import 'package:flutter/material.dart';
import 'package:weather_app/screens/search_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              icon: Icon(Icons.search_rounded),
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SearchScreen();
                    },
                  ),
                );
              },
            ),
          )
        ],
        backgroundColor: Colors.blue,
        title: Text(
          'Weather',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'there is no weather😔 start',
              style: TextStyle(fontSize: 30),
            ),
          ),
          Text(
            'serching now 🔍',
            style: TextStyle(fontSize: 30),
          )
        ],
      ),

    );
  }
}
