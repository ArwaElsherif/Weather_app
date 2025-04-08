import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Search City', style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: TextField(
            onChanged: (value){},
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 30,horizontal: 8),
              labelText: 'Search',
              suffixIcon: Icon(Icons.search),
              hintText: 'Enter city name',
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red ,width: 2 ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
