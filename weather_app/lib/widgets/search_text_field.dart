import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: TextField(
          onChanged: (value) {},
          decoration: InputDecoration(
            label: Text('Search'),
            hintText: 'Enter city name',
            contentPadding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
            border: OutlineInputBorder(),
            suffixIcon: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.search),
            ),
          ),
        ),
      ),
    );
  }
}
