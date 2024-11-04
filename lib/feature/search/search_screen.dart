import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<String> items = ["หมู", "เห็ด", "เป็ด", "ไก่"];
  List<String> filteredItems = [];

  @override
  void initState() {
    super.initState();
    filteredItems = items;
  }

  void _filterItems(String value) {
    setState(() {
      filteredItems = items.where((item) => item.contains(value)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Column(
            children: [
              SearchBar(
                onChanged: (textInput) {
                  _filterItems(textInput);
                },
              ),
              const SizedBox(
                height: 8,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: filteredItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Text(
                      filteredItems[index],
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
