import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = TextEditingController();
    return Container(
      margin: const EdgeInsets.fromLTRB(15, 20, 15, 20),
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(
          hintText: 'Search food',
          fillColor: Colors.grey[100],
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: (Colors.white),
            ),
            borderRadius: BorderRadius.circular(30.0),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: const BorderSide(
              color: Colors.grey,
            ),
          ),
          prefixIcon: IconButton(
            onPressed: _controller.clear,
            icon: const Icon(Icons.search),
          ),
        ),
      ),
    );
  }
}
