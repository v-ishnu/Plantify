import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.75,
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: TextField(
          controller: _searchController,
          decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: const TextStyle(
              color: Colors.black,
            ),
            prefixIcon: const Icon(
                Icons.search,
                color: Colors.black
            ),
            suffixIcon: const HugeIcon(
              icon: HugeIcons.strokeRoundedSearchVisual,
              color: Colors.black,
              size: 24.0,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: const BorderSide(
                  color: Color(0xff002140)
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: const BorderSide(
                  color: Color(0xff002140)
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: const BorderSide(
                  color: Color(0xff002140)
              ), // Set border color to white
            ),
            filled: true,
            fillColor: Colors.white.withOpacity(0.1),
            contentPadding: const EdgeInsets.all(13.0),
          ),
          onChanged: (value) {
            // Implement your search logic here
            print('Searching for: $value');
          },
        ),
      ),
    );
  }
}
